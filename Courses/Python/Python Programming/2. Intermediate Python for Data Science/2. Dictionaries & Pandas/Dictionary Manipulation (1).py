"""
    Add the key 'italy' with the value 'rome' to europe.
    To assert that 'italy' is now a key in europe, print out 'italy' in europe.
    Add another key:value pair to europe: 'poland' is the key, 'warsaw' is the corresponding value.
    Print out europe.
"""

# Definition of dictionary
europe = {'spain':'madrid', 'france':'paris', 'germany':'berlin', 'norway':'oslo' }

# Add italy to europe
europe["italy"] = 'rome'

# Print out italy in europe
print("italy" in europe)

# Add poland to europe
europe["poland"] = 'warsaw'

# Print europe
print(europe)