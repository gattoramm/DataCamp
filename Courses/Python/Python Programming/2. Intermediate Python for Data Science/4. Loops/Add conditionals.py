"""
    Inside the while loop, replace offset = offset - 1 by an if-else statement:
        If offset is greater than zero, you should decrease offset by 1.
        Else, you should increase offset by 1.
    If you've coded things correctly, hitting Submit Answer should work this time. If your code is still taking too long to run, you probably made a mistake!
"""

# Initialize offset
offset = -6

# Code the while loop
while offset != 0 :
    print("correcting...")
    if offset > 0:
    	offset -= 1
    else:
    	offset += 1
    print(offset)