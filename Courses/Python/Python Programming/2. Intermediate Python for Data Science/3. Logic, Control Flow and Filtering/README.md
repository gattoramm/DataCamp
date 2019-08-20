## Logic, Control Flow and Filtering
Boolean logic is the foundation of decision-making in your Python programs. Learn about different comparison operators, how you can combine them with boolean operators and how to use the boolean outcomes in control structures. You'll also learn to filter data from Pandas DataFrames using logic.

### Equality
To check if two Python values, or variables, are equal you can use `==`. To check for inequality, you need `!=`. As a refresher, have a look at the following examples that all result in `True`. Feel free to try them out in the IPython Shell.

```python
2 == (1 + 1)
"intermediate" != "python"
True != False
"Python" != "python"
```

When you write these comparisons in a script, you will need to wrap a [print()](https://docs.python.org/3/library/functions.html#print) function around them to see the output.

### Greater and less than
In the video, Filip also talked about the less than and greater than signs, `<` and `>` in Python. You can combine them with an equals sign: `<=` and `>=`. Pay attention: `<=` is valid syntax, but `=<` is not.

All Python expressions in the following code chunk evaluate to `True`:

```python
3 < 4
3 <= 4
"alpha" <= "beta"
```

Remember that for string comparison, Python determines the relationship based on alphabetical order.

### Compare arrays
Out of the box, you can also use comparison operators with Numpy arrays.

Remember `areas`, the list of area measurements for different rooms in your house from the previous course? This time there's two Numpy arrays: `my_house` and `your_house`. They both contain the areas for the kitchen, living room, bedroom and bathroom in the same order, so you can compare them.

### and, or, not (1)
A boolean is either `1` or `0`, `True` or `False`. With boolean operators such as `and`, `or` and `not`, you can combine these booleans to perform more advanced queries on your data.

In the sample code on the right, two variables are defined: `my_kitchen` and `your_kitchen`, representing areas.

### Boolean operators with Numpy
Before, the operational operators like `<` and `>=` worked with Numpy arrays out of the box. Unfortunately, this is not true for the boolean operators `and`, `or`, and `not`.

To use these operators with Numpy, you will need [np.logical_and()](http://docs.scipy.org/doc/numpy-1.10.0/reference/generated/numpy.logical_and.html), [np.logical_or()](http://docs.scipy.org/doc/numpy-1.10.0/reference/generated/numpy.logical_or.html) and [np.logical_not()](http://docs.scipy.org/doc/numpy-1.10.0/reference/generated/numpy.logical_not.html). Here's an example on the `my_house` and `your_house` arrays from before to give you an idea:

```python
np.logical_and(your_house > 13, 
               your_house < 15)
```

### if
It's time to take a closer look around in your house.

Two variables are defined in the sample code: `room`, a string that tells you which room of the house we're looking at, and `area`, the area of that room.

### Add else
On the right, the `if` construct for `room` has been extended with an `else` statement so that "looking around elsewhere." is printed if the condition `room == "kit"` evaluates to `False`.

Can you do a similar thing to add more functionality to the `if` construct for `area`?

### Customize further: elif
It's also possible to have a look around in the bedroom. The sample code contains an `elif` part that checks if `room` equals "bed". In that case, "looking around in the bedroom." is printed out.

It's up to you now! Make a similar addition to the second control structure to further customize the messages for different values of `area`.

### Driving right (1)
Remember that `cars` dataset, containing the cars per 1000 people (`cars_per_cap`) and whether people drive right (`drives_right`) for different countries (`country`)? The code that imports this data in CSV format into Python as a DataFrame is available on the right.

In the video, you saw a step-by-step approach to filter observations from a DataFrame based on boolean arrays. Let's start simple and try to find all observations in `cars` where `drives_right` is `True`.

`drives_right` is a boolean column, so you'll have to extract it as a Series and then use this boolean Series to select observations from `cars`.

### Driving right (2)
The code in the previous example worked fine, but you actually unnecessarily created a new variable `dr`. You can achieve the same result without this intermediate variable. Put the code that computes `dr` straight into the square brackets that select observations from `cars`.

### Cars per capita (1)
Let's stick to the `cars` data some more. This time you want to find out which countries have a high cars per capita figure. In other words, in which countries do many people have a car, or maybe multiple cars.

Similar to the previous example, you'll want to build up a boolean Series, that you can then use to subset the `cars` DataFrame to select certain observations. If you want to do this in a one-liner, that's perfectly fine!

### Cars per capita (2)
Remember about [np.logical_and()](http://docs.scipy.org/doc/numpy-1.10.0/reference/generated/numpy.logical_and.html), [np.logical_or()](http://docs.scipy.org/doc/numpy-1.10.0/reference/generated/numpy.logical_or.html) and [np.logical_not()](http://docs.scipy.org/doc/numpy-1.10.0/reference/generated/numpy.logical_not.html), the Numpy variants of the `and`, `or` and `not` operators? You can also use them on Pandas Series to do more advanced filtering operations.

Take this example that selects the observations that have a `cars_per_cap` between 10 and 80. Try out these lines of code step by step to see what's happening.

```python
cpc = cars['cars_per_cap']
between = np.logical_and(cpc > 10, cpc < 80)
medium = cars[between]
```