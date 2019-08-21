"""
    In the function body, concatenate the string in word with '!!!' and assign to shout_word.
    Replace the print() statement with the appropriate return statement.
    Call the shout() function, passing to it the string, 'congratulations', and assigning the call to the variable, yell.
    To check if yell contains the value returned by shout(), print the value of yell.
"""

# Define shout with the parameter, word
def shout(word):
    """Return a string with three exclamation marks"""
    # Concatenate the strings: shout_word
    shout_word = word + '!!!'

    # Replace print with return
    return shout_word

# Pass 'congratulations' to shout: yell
yell = shout('congratulations')

# Print yell
print(yell)