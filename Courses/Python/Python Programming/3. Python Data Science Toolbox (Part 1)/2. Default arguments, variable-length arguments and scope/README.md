## Default arguments, variable-length arguments and scope
In this chapter, you'll learn to write functions with default arguments, so that the user doesn't always need to specify them, and variable-length arguments, so that they can pass to your functions an arbitrary number of arguments. These are both incredibly useful tools! You'll also learn about the essential concept of scope. Enjoy!

### The keyword global
Let's work more on your mastery of scope. In this exercise, you will use the keyword `global` within a function to alter the value of a variable defined in the global scope.

### Nested Functions I
You've learned in the last video about nesting functions within functions. One reason why you'd like to do this is to avoid writing out the same computations within functions repeatedly. There's nothing new about defining nested functions: you simply define it as you would a regular function with `def` and embed it inside another function!

In this exercise, inside a function `three_shouts()`, you will define a nested function `inner()` that concatenates a string object with `!!!`. `three_shouts()` then returns a tuple of three elements, each a string concatenated with `!!!` using `inner()`. Go for it!

### Nested Functions II
Great job, you've just nested a function within another function. One other pretty cool reason for nesting functions is the idea of a closure. This means that the nested or inner function remembers the state of its enclosing scope when called. Thus, anything defined locally in the enclosing scope is available to the inner function even when the outer function has finished execution.

Let's move forward then! In this exercise, you will complete the definition of the inner function `inner_echo()` and then call `echo()` a couple of times, each with a different argument. Complete the exercise and see what the output will be!

### The keyword nonlocal and nested functions
Let's once again work further on your mastery of scope! In this exercise, you will use the keyword `nonlocal` within a nested function to alter the value of a variable defined in the enclosing scope.

### Functions with one default argument
In the previous chapter, you've learned to define functions with more than one parameter and then calling those functions by passing the required number of arguments. In the last video, Hugo built on this idea by showing you how to define functions with default arguments. You will practice that skill in this exercise by writing a function that uses a default argument and then calling the function a couple of times.

### Functions with multiple default arguments
You've now defined a function that uses a default argument - don't stop there just yet! You will now try your hand at defining a function with more than one default argument and then calling this function in various ways.

After defining the function, you will call it by supplying values to *all* the default arguments of the function. Additionally, you will call the function by not passing a value to one of the default arguments - see how that changes the output of your function!

### Functions with variable-length arguments (*args)
Flexible arguments enable you to pass a variable number of arguments to a function. In this exercise, you will practice defining a function that accepts a variable number of string arguments.

The function you will define is `gibberish()` which can accept a variable number of string values. Its return value is a single string composed of all the string arguments concatenated together in the order they were passed to the function call. You will call the function with a single string argument and see how the output changes with another call using more than one string argument. Recall from the previous video that, within the function definition, `args` is a tuple.

### Functions with variable-length keyword arguments (**kwargs)
Let's push further on what you've learned about flexible arguments - you've used `*args`, you're now going to use `**kwargs`! What makes `**kwargs` different is that it allows you to pass a variable number of **keyword arguments** to functions. Recall from the previous video that, within the function definition, `kwargs` is a dictionary.

To understand this idea better, you're going to use `**kwargs` in this exercise to define a function that accepts a variable number of keyword arguments. The function simulates a simple status report system that prints out the status of a character in a movie.

### Bringing it all together (1)
Recall the *Bringing it all together* exercise in the previous chapter where you did a simple Twitter analysis by developing a function that counts how many tweets are in certain languages. The output of your function was a dictionary that had the language as the *keys* and the counts of tweets in that language as the *value*.

In this exercise, we will generalize the Twitter language analysis that you did in the previous chapter. You will do that by including a **default argument** that takes a column name.

For your convenience, `pandas` has been imported as `pd` and the `'tweets.csv'` file has been imported into the DataFrame `tweets_df`. Parts of the code from your previous work are also provided.

### Bringing it all together (2)
Wow, you've just generalized your Twitter language analysis that you did in the previous chapter to include a default argument for the column name. You're now going to generalize this function one step further by allowing the user to pass it a flexible argument, that is, in this case, as many column names as the user would like!

Once again, for your convenience, `pandas` has been imported as `pd` and the `'tweets.csv'` file has been imported into the DataFrame `tweets_df.` Parts of the code from your previous work are also provided.