"""
Change the line plot that's coded in the script to a scatter plot.
A correlation will become clear when you display the GDP per capita on a logarithmic scale. Add the line plt.xscale('log').
Finish off your script with plt.show() to display the plot.
"""

import matplotlib.pyplot as plt
# Change the line plot below to a scatter plot
plt.scatter(gdp_cap, life_exp)

# Put the x-axis on a logarithmic scale
plt.xscale('log')

# Show plot
plt.show()