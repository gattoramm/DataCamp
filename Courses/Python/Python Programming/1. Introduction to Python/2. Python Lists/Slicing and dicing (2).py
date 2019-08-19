"""
Create downstairs again, as the first 6 elements of areas. This time, simplify the slicing by omitting the begin index.
Create upstairs again, as the last 4 elements of areas. This time, simplify the slicing by omitting the end index.
"""

# Create the areas list
areas = ["hallway", 11.25, "kitchen", 18.0, "living room", 20.0, "bedroom", 10.75, "bathroom", 9.50]

# Alternative slicing to create downstairs
downstairs = areas[:6]

# Alternative slicing to create upstairs
upstairs = areas[-4:]