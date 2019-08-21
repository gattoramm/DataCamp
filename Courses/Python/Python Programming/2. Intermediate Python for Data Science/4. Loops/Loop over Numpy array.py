"""
    Import the numpy package under the local alias np.
    Write a for loop that iterates over all elements in np_height and prints out "x inches" for each element, where x is the value in the array.
    Write a for loop that visits every element of the np_baseball array and prints it out.
"""

# Import numpy as np
import numpy as np

# For loop over np_height
for i in np_height:
    print(str(i) + " inches")

# For loop over np_baseball
for i in np.nditer(np_baseball):
    print(i)