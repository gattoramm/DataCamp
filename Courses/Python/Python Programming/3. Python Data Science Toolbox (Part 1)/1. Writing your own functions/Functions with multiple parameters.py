"""
    Modify the function header such that it accepts two parameters, word1 and word2, in that order.
    Concatenate each of word1 and word2 with '!!!' and assign to shout1 and shout2, respectively.
    Concatenate shout1 and shout2 together, in that order, and assign to new_shout.
    Pass the strings 'congratulations' and 'you', in that order, to a call to shout(). Assign the return value to yell.
"""

# Define shout with parameters word1 and word2
def shout(word1, word2):
    """Concatenate strings with three exclamation marks"""
    # Concatenate word1 with '!!!': shout1
    shout1 = word1 + '!!!'
    
    # Concatenate word2 with '!!!': shout2
    shout2 = word2 + '!!!'
    
    # Concatenate shout1 with shout2: new_shout
    new_shout = shout1 + shout2

    # Return new_shout
    return new_shout

# Pass 'congratulations' and 'you' to shout(): yell
yell = shout('congratulations', 'you')

# Print yell
print(yell)