"""
Using conditionals in comprehensions (2)
"""
# Create a list of strings: fellowship
fellowship = ['frodo', 'samwise', 'merry', 'aragorn', 'legolas', 'boromir', 'gimli']

# Create list comprehension: new_fellowship
new_fellowship = [empty if len(empty) >= 7 else '' for empty in fellowship]

# Print the new list
print(new_fellowship)
