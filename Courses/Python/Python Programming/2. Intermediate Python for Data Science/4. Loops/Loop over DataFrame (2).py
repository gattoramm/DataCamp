"""
Adapt the code in the for loop such that the first iteration prints out "US: 809", the second iteration "AUS: 731", and so on. The output should be in the form "country: cars_per_cap". Make sure to print out this exact string, with the correct spacing.
"""

# Import cars data
import pandas as pd
cars = pd.read_csv('cars.csv', index_col = 0)

# Adapt for loop
for lab, row in cars.iterrows() :
    print(lab + ": " + str(row['cars_per_cap']))