
import numpy as np
from matplotlib import pyplot as plt

from load_spice import load_spice

import scipy.interpolate

import bode_utils

def load_corner(corner):

    plots = load_spice.load_spice("build/{}.raw".format(corner))

    print("")
    print("")
    print("Results for corner {}".format(corner))

    #print(plots)

    # Get phase margin

    #print(plots[0]['vars'])

    #plt.semilogx(np.absolute(plots[0]['data']['frequency']), 10*np.log(np.abs(plots[0]['data']['v(vout)'])))
    #plt.show()

    bode_utils.bode_plot2(np.real(plots[0]['data']['frequency']), 
                         plots[0]['data']['v(vout)'])
    plt.show()

    freq = plots[0]['data']['frequency']
    vout = plots[0]['data']['v(vout)'] 

    data_interp_f = scipy.interpolate.interp1d(np.abs(vout), np.abs(freq))
    cross_over_freq =  data_interp_f(1.0)

    print("Crossover frequency = {:1.2g} Hz".format(cross_over_freq))

    data_interp_ph = scipy.interpolate.interp1d(np.abs(freq), np.angle(vout))
    cross_over_phase = data_interp_ph(cross_over_freq)*180/np.pi

    print("Crossover phase = {:1.2g} Deg".format(cross_over_phase))

    pm = 180 + cross_over_phase

    print("Phase margin = {:1.2f} Deg".format(pm))


for corner in ["tt"]: #, "ss", "fs", "sf", "ff"]:
    load_corner(corner)


