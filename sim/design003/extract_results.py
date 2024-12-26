
import numpy as np
from matplotlib import pyplot as plt

from load_spice import load_spice

import scipy.interpolate

import bode_utils

gain_vs_bias_g = []
gain_vs_bias_v = []

open_loop_bandwidth_vs_bias_b = []
open_loop_bandwidth_vs_bias_v = []

twenty_db_bandwidth_vs_bias_b = []
twenty_db_bandwidth_vs_bias_v = []

pm_vs_bias_p = []
pm_vs_bias_v = []


cur_bias = 0

def load_corner(corner):

    plots = load_spice.load_spice("build/{}.raw".format(corner))

    print("")
    print("")
    print("Results for corner {}".format(corner))

    try:
        for plotty in plots:

            if plotty['plot_name'] == "Operating Point":

                print()
                print()
                print("Vbias = {} V".format(np.abs(plotty['data']['v(vb)'][0])))

                cur_bias = np.abs(plotty['data']['v(vb)'][0]) 

                continue

            #print(plots)

            # Get phase margin

            #print(plots[0]['vars'])

            #plt.semilogx(np.absolute(plots[0]['data']['frequency']), 10*np.log(np.abs(plots[0]['data']['v(vout)'])))
            #plt.show()

            #bode_utils.bode_plot2(np.real(plotty['data']['frequency']), 
            #                     plotty['data']['v(vout)'])
            #plt.show()

            freq = plotty['data']['frequency']
            vout = plotty['data']['v(vout)'] 

            dc_gain = 20*np.log(np.abs(vout[0])) 

            print("DC Open loop gain = {:0.2f} dB".format(dc_gain)) 

            gain_vs_bias_g.append(dc_gain)
            gain_vs_bias_v.append(cur_bias)


            data_interp_f = scipy.interpolate.interp1d(np.abs(vout), np.abs(freq))
            cross_over_freq =  data_interp_f(1.0)

            print("Crossover frequency = {:1.2g} Hz".format(cross_over_freq))

            open_loop_bandwidth_vs_bias_b.append(cross_over_freq)
            open_loop_bandwidth_vs_bias_v.append(cur_bias)

            twenty_db_freq = data_interp_f(10.0)

            twenty_db_bandwidth_vs_bias_b.append(twenty_db_freq)
            twenty_db_bandwidth_vs_bias_v.append(cur_bias)


            print("20dB closed loop bandwidth = {:1.2g} Hz".format(twenty_db_freq))

            data_interp_ph = scipy.interpolate.interp1d(np.abs(freq), np.angle(vout))
            cross_over_phase = data_interp_ph(cross_over_freq)*180/np.pi

            print("Crossover phase = {:1.2g} Deg".format(cross_over_phase))

            if cross_over_phase > 0:
                pm = 180 - cross_over_phase
            else:    
                pm = 180 + cross_over_phase

            pm_vs_bias_p.append(pm)
            pm_vs_bias_v.append(cur_bias)

            print("Phase margin = {:1.2f} Deg".format(pm))
    except Exception as e:
        print("Error")
        print(e)


for corner in ["tt"]: #, "ss", "fs", "sf", "ff"]:
    load_corner(corner)

    #plt.plot(gain_vs_bias_v, gain_vs_bias_g, 'ko')
    #plt.show()

    #plt.plot(open_loop_bandwidth_vs_bias_v, open_loop_bandwidth_vs_bias_b, 'ko')
    #plt.show()

    def twin_ax_plot(v, d, d_lab, d2, d2_lab):
        fig, ax1 = plt.subplots()

        color = 'tab:red'
        ax1.set_xlabel('bias (V)')
        ax1.set_ylabel(d_lab, color=color)
        ax1.plot(v, d, 'o', color=color)
        ax1.tick_params(axis='y', labelcolor=color)

        ax2 = ax1.twinx()  # instantiate a second Axes that shares the same x-axis

        color = 'tab:blue'
        ax2.set_ylabel(d2_lab, color=color)  # we already handled the x-label with ax1
        ax2.plot(v, d2, 'o', color=color)
        ax2.tick_params(axis='y', labelcolor=color)

        fig.tight_layout()  # otherwise the right y-label is slightly clipped
        plt.show()

#gain_vs_bias_g = []
#gain_vs_bias_v = []
#open_loop_bandwidth_vs_bias_b = []
#open_loop_bandwidth_vs_bias_v = []
#twenty_db_bandwidth_vs_bias_b = []
#twenty_db_bandwidth_vs_bias_v = []
#pm_vs_bias_p = []
#pm_vs_bias_v = []

    twin_ax_plot(gain_vs_bias_v, gain_vs_bias_g, "Open loop gain, dB", open_loop_bandwidth_vs_bias_b, "Open loop bandwidth, Hz") 
    twin_ax_plot(gain_vs_bias_v, gain_vs_bias_g, "Open loop gain, dB", twenty_db_bandwidth_vs_bias_b, "20 dB bandwidth, Hz") 
    twin_ax_plot(gain_vs_bias_v, twenty_db_bandwidth_vs_bias_b, "20 dB bandwidth Hz", pm_vs_bias_p, "Phase margin, deg") 






