
import numpy as np
from matplotlib import pyplot as plt

import load_spice

plots = load_spice.load_spice("high_speed_comp.raw")

plot1 = plots[1]
print(plot1['vars'])
#print(plot1['data']['time'])

#plt.plot(plot1['data']['time'], plot1['data']['v(inn)'])
#plt.plot(plot1['data']['time'], plot1['data']['v(inp)'])
#plt.show()

#plt.plot(plot1['data']['time'], plot1['data']['v(comp_out)'])
#plt.plot(plot1['data']['time'], plot1['data']['v(clk)'])
#plt.show()

failures = []

vdd = []
vcm = []
temp = []

power_min = []
power_max = []
power_av  = []

for n, plot in enumerate(plots[1:]):

    # Find the point where vinn crosses vinp

    cross_point = 0
    for i in range(0, plot['num_points']):
        if plot['data']['v(inn)'][i] > plot['data']['v(inp)'][i]:
            cross_point = i
            break
    out_point = 0
    for i in range(cross_point, plot['num_points']):
        if plot['data']['v(comp_out)'][i] < 0.5:
            out_point = i
            break

    cross_time = plot['data']['time'][cross_point] 
    out_time = plot['data']['time'][out_point]

    vdd.append(plot['data']['v(vdd)'][0])
    vcm.append(plot['data']['v(inp)'][0])
    temp.append(plot['data']['v(temperat)'][0])

    # Skip over startup transients
    power = (-plot['data']['v(vdd)']*plot['data']['i(vvdd)'])[100:]
    power_min.append(np.min(power))
    power_max.append(np.max(power))
    power_av.append(np.mean(power))


    #plt.plot(plot['data']['time'][100:], power)
    #plt.show()

    print("%d, " % n, end="")
    print("{:1.2g}, {:1.2g}, {:1.2g}, {:1.2g}, {:1.2g}, {:1.2g}, ".format(plot['data']['v(temperat)'][0], 
        plot['data']['v(inp)'][0], plot['data']['v(vdd)'][0], cross_time, out_time, out_time -  cross_time), end="") 
    if (out_time - cross_time < 30e-9):
        print("OK")
    else:
        print("Failed")
        failures.append((plot['data']['v(temperat)'][0],
        plot['data']['v(inp)'][0], plot['data']['v(vdd)'][0]))

# Print common mode voltage range
print("Common mode range: {:1.2g} - {:1.2g} V".format(np.min(np.array(vcm)), np.max(np.array(vcm))))

# Print temperature range
print("Temperature: {:.2f} - {:.2f} Deg C".format(np.min(np.array(temp)), np.max(np.array(temp))))

# Print vdd range 
print("Supply voltage range: {:1.2g} - {:1.2g} V".format(np.min(np.array(vdd)), np.max(np.array(vdd))))

# Print min, max and average power
print("Power consumption: min {} max {} av {} W".format(np.min(np.array(power_min)), np.max(np.array(power_max)), np.mean(np.array(power_av))))

print("Failures: ")
print(failures)
