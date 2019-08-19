"""
Use plt.hist() to create a histogram of the values in life_exp. Do not specify the number of bins; Python will set the number of bins to 10 by default for you.
Add plt.show() to actually display the histogram. Can you tell which bin contains the most observations?
"""

import matplotlib.pyplot as plt
# Create histogram of life_exp data
plt.hist(life_exp)

# Display histogram
plt.show()