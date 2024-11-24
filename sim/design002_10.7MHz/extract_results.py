
import numpy as np
from matplotlib import pyplot as plt

from load_spice import load_spice

from scipy.signal import butter, lfilter
from scipy.signal import freqs
from scipy import fft
import scipy

from numpy.fft import rfft
from numpy import argmax, mean, diff, log
from scipy.signal import blackmanharris, fftconvolve

from parabolic import parabolic

def butter_bandpass(cutOffLow, cutOff, fs, order=5):
    b, a = butter(order, (cutOffLow, cutOff), fs = fs, btype='band', analog = False)
    return b, a

def butter_bandpass_filter(data, cutOffLow, cutOff, fs, order=4):
    b, a = butter_bandpass(cutOffLow, cutOff, fs, order=order)
    y = lfilter(b, a, data)
    return y

def freq_from_fft(sig, fs):
    """
    Estimate frequency from peak of FFT
    """
    # Compute Fourier transform of windowed signal
    windowed = sig * blackmanharris(len(sig))
    f = rfft(windowed)

    # Find the peak and interpolate to get a more accurate peak
    i = argmax(abs(f))  # Just use this for less-accurate, naive version
    true_i = parabolic(log(abs(f)), i)[0]

    # Convert to equivalent frequency
    return fs * true_i / len(windowed)

clock_freq = 50e6

def get_freq(time, data):
        data_interp_f = scipy.interpolate.interp1d(time, data)
        tnew = np.arange(1e-6, 10e-6, 1.0 / clock_freq)

        #plt.plot(tnew, data_interp_f(tnew))
        #plt.show()
        data_resample = data_interp_f(tnew)
        data_resample = data_resample - np.mean(data_resample)

        data_filter = butter_bandpass_filter(data_resample, 10e6, 11.4e6, clock_freq, 4)
        
        plt.plot(tnew, data_filter)
        plt.show()

        freq = freq_from_fft(data_filter, clock_freq)

        return freq

def load_corner(corner):

    plots = load_spice.load_spice("build/{}.raw".format(corner))

    print("")
    print("")
    print("Results for corner {}".format(corner))

    for plot in plots:

        #print(plot['vars'])

        freq_in = plot['data']['v(freqv)'][0]  

        print("Input frequency: {:.4g}MHz".format(freq_in / 1e6))

        #plt.plot(plot['data']['time'], plot['data']['v(freqv)'])
        #plt.plot(plot['data']['time'], plot['data']['v(x1.vfilt)'])
        #plt.plot(plot['data']['time'], plot['data']['v(comp_out)'])
        #plt.show()

        # We need to resample the comp_out signal to precisely 50MHz so we can process it 

        freq_in_est = get_freq(plot['data']['time'], plot['data']['v(inp)'])
        freq_out_est = get_freq(plot['data']['time'], plot['data']['v(comp_out)'])

        print("Temp = {} Deg C, VDD = {} V, VCM = {}".format(plot['data']['v(temperat)'][0], plot['data']['v(vdd)'][0], np.mean(plot['data']['v(inp)'])))
        print("Input tone: {} Hz".format(freq_in_est))
        print("Output tone: {} Hz".format(freq_out_est))

        if freq_out_est > 0.995*freq_in_est and freq_out_est < 1.005*freq_in_est:
            print("OK")
        else:
            print("FAIL")


for corner in ["tt"]: #, "ss", "fs", "sf", "ff"]:
    load_corner(corner)


