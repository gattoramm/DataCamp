"""
Nested list comprehensions
"""
# Create a 5 x 5 matrix using a list of lists: matrix
matrix = [[col for col in range(5)] for col in range(5)]

# Print the matrix
for row in matrix:
    print(row)

