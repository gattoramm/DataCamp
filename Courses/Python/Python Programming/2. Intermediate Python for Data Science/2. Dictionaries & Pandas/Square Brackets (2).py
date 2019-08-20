"""
    Select the first 3 observations from cars and print them out.
    Select the fourth, fifth and sixth observation, corresponding to row indexes 3, 4 and 5, and print them out.
"""

# Import cars data
import pandas as pd
cars = pd.read_csv('cars.csv', index_col = 0)

# Print out first 3 observations
print(cars[0:3])

# Print out fourth, fifth and sixth observation
print(cars[3:6])