## Writing your own functions
Here you will learn how to write your very own functions. In this Chapter, you'll learn how to write simple functions, as well as functions that accept multiple arguments and return multiple values. You'll also have the opportunity to apply these newfound skills to questions that commonly arise in Data Science contexts.

### Write a simple function
In the last video, Hugo described the basics of how to define a function. You will now write your own function!

Define a function, `shout()`, which simply prints out a string with three exclamation marks `'!!!'` at the end. The code for the `square()` function that we wrote earlier is found below. You can use it as a pattern to define `shout()`.

```python
def square():
    new_value = 4 ** 2
    return new_value
```

Note that the function body is indented 4 spaces already for you. Function bodies need to be indented by a consistent number of spaces and the choice of 4 is common.

*This course touches on a lot of concepts you may have forgotten, so if you ever need a quick refresher, download the [Python for data science Cheat Sheet](https://datacamp-community-prod.s3.amazonaws.com/e30fbcd9-f595-4a9f-803d-05ca5bf84612) and keep it handy!*

### Single-parameter functions
Congratulations! You have successfully defined and called your own function! That's pretty cool.

In the previous exercise, you defined and called the function `shout()`, which printed out a string concatenated with `'!!!'`. You will now update `shout()` by adding a parameter so that it can accept and process any string argument passed to it. Also note that `shout(word)`, the part of the header that specifies the function name and parameter(s), is known as the signature of the function. You may encounter this term in the wild!

### Functions that return single values
You're getting very good at this! Try your hand at another modification to the `shout()` function so that it now *returns* a single value instead of printing within the function. Recall that the `return` keyword lets you return values from functions. Parts of the function `shout()`, which you wrote earlier, are shown. Returning values is generally more desirable than printing them out because, as you saw earlier, a `print()` call assigned to a variable has type `NoneType`.

### Functions with multiple parameters
Hugo discussed the use of multiple parameters in defining functions in the last lecture. You are now going to use what you've learned to modify the `shout()` function further. Here, you will modify `shout()` to accept two arguments. Parts of the function `shout()`, which you wrote earlier, are shown.

### A brief introduction to tuples
Alongside learning about functions, you've also learned about tuples! Here, you will practice what you've learned about tuples: how to construct, unpack, and access tuple elements. Recall how Hugo unpacked the tuple `even_nums` in the video:

`a, b, c = even_nums`

A three-element tuple named `nums` has been preloaded for this exercise. Before completing the script, perform the following:

* Print out the value of `nums` in the IPython shell. Note the elements in the tuple.

* In the IPython shell, try to change the first element of `nums` to the value 2 by doing an assignment: `nums[0] = 2`. What happens?

### Functions that return multiple values
In the previous exercise, you constructed tuples, assigned tuples to variables, and unpacked tuples. Here you will return multiple values from a function using tuples. Let's now update our `shout()` function to return multiple values. Instead of returning just one string, we will return two strings with the string `!!!` concatenated to each.

Note that the return statement `return x, y` has the same result as `return (x, y)`: the former actually packs `x` and `y` into a tuple under the hood!

### Bringing it all together (1)
You've got your first taste of writing your own functions in the previous exercises. You've learned how to add parameters to your own function definitions, return a value or multiple values with tuples, and how to call the functions you've defined.

In this and the following exercise, you will bring together all these concepts and apply them to a simple data science problem. You will load a dataset and develop functionalities to extract simple insights from the data.

For this exercise, your goal is to recall how to load a dataset into a DataFrame. The dataset contains Twitter data and you will iterate over entries in a column to build a dictionary in which the keys are the names of languages and the values are the number of tweets in the given language. The file `tweets.csv` is available in your current directory.

### Bringing it all together (2)
Great job! You've now defined the functionality for iterating over entries in a column and building a dictionary with keys the names of languages and values the number of tweets in the given language.

In this exercise, you will define a function with the functionality you developed in the previous exercise, return the resulting dictionary from within the function, and call the function with the appropriate arguments.

For your convenience, the pandas package has been imported as pd and the `'tweets.csv'` file has been imported into the `tweets_df` variable.