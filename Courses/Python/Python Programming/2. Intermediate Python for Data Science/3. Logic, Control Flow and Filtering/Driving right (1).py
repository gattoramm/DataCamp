"""
    Extract the drives_right column as a Pandas Series and store it as dr.
    Use dr, a boolean Series, to subset the cars DataFrame. Store the resulting selection in sel.
    Print sel, and assert that drives_right is True for all observations.
"""

# Import cars data
import pandas as pd
cars = pd.read_csv('cars.csv', index_col = 0)

# Extract drives_right column as Series: dr
dr = cars['drives_right']

# Use dr to subset cars: sel
sel = cars[dr]

# Print sel
print(sel)