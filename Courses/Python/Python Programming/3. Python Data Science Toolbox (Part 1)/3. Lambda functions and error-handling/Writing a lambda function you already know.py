"""
    Define the lambda function echo_word using the variables word1 and echo. Replicate what the original function definition for echo_word() does above.
    Call echo_word() with the string argument 'hey' and the value 5, in that order. Assign the call to result.
"""

# Define echo_word as a lambda function: echo_word
echo_word = (lambda word1, echo: word1 * echo)

# Call echo_word: result
result = echo_word('hey', 5)

# Print result
print(result)