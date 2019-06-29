"""
Iterators as function arguments

There are also functions that take iterators and iterables as arguments.
For example, the list() and sum() functions return a list and the sum of
elements, respectively.

In this exercise, you will use these functions by passing an iterable from
range() and then printing the results of the function calls.
"""
# Create a range object: values
values = range(10, 21)

# Print the range object
print(values)

# Create a list of integers: values_list
values_list = list(values)

# Print values_list
print(values_list)

# Get the sum of values: values_sum
values_sum = sum(values)

# Print values_sum
print(values_sum)

