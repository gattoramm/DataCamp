"""
Import the math package. Now you can access the constant pi with math.pi.
Calculate the circumference of the circle and store it in C.
Calculate the area of the circle and store it in A.
"""

# Definition of radius
r = 0.43

# Import the math package
import math as mth

# Calculate C
C = 2 * mth.pi * r

# Calculate A
A = mth.pi * r * r

# Build printout
print("Circumference: " + str(C))
print("Area: " + str(A))