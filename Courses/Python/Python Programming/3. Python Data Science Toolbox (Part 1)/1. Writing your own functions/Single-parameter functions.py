"""
    Complete the function header by adding the parameter name, word.
    Assign the result of concatenating word with '!!!' to shout_word.
    Print the value of shout_word.
    Call the shout() function, passing to it the string, 'congratulations'.
"""

# Define shout with the parameter, word
def shout(word):
    """Print a string with three exclamation marks"""
    # Concatenate the strings: shout_word
    shout_word = word + '!!!'

    # Print shout_word
    print(shout_word)

# Call shout with the string 'congratulations'
shout('congratulations')