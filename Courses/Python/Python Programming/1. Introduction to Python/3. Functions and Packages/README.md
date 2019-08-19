## Functions and Packages
To leverage the code that brilliant Python developers have written, you'll learn about using functions, methods and packages. This will help you to reduce the amount of code you need to solve challenging problems!

### Familiar functions
Out of the box, Python offers a bunch of built-in functions to make your life as a data scientist easier. You already know two such functions: [print()](https://docs.python.org/3/library/functions.html#print) and [type()](https://docs.python.org/3/library/functions.html#type). You've also used the functions [str()](https://docs.python.org/3/library/functions.html#func-str), [int()](https://docs.python.org/3/library/functions.html#int), [bool()](https://docs.python.org/3/library/functions.html#bool) and [float()](https://docs.python.org/3/library/functions.html#float) to switch between data types. These are built-in functions as well.

Calling a function is easy. To get the type of `3.0` and store the output as a new variable, `result`, you can use the following:

```python
result = type(3.0)
```

The general recipe for calling functions and saving the result to a variable is thus:

```python
output = function_name(input)
```

### Multiple arguments
In the previous exercise, the square brackets around `imag` in the documentation showed us that the `imag` argument is optional. But Python also uses a different way to tell users about arguments being optional.

Have a look at the documentation of [sorted()](https://docs.python.org/3/library/functions.html#sorted) by typing `help(sorted)` in the IPython Shell.

You'll see that [sorted()](https://docs.python.org/3/library/functions.html#sorted) takes three arguments: `iterable`, `key` and `reverse`.

`key=None` means that if you don't specify the `key` argument, it will be `None`. `reverse=False` means that if you don't specify the `reverse` argument, it will be `False`.

In this exercise, you'll only have to specify `iterable` and `reverse`, not `key`. The first input you pass to [sorted()](https://docs.python.org/3/library/functions.html#sorted) will be matched to the `iterable` argument, but what about the second input? To tell Python you want to specify `reverse` without changing anything about `key`, you can use `=`:

```python
sorted(___, reverse = ___)
```

Two lists have been created for you on the right. Can you paste them together and sort them in descending order?

Note: For now, we can understand an [**iterable**](https://docs.python.org/2/glossary.html#term-iterable) as being any collection of objects, e.g. a List.

### String Methods
Strings come with a bunch of methods. Follow the instructions closely to discover some of them. If you want to discover them in more detail, you can always type `help(str)` in the IPython Shell.

A string `place` has already been created for you to experiment with.

### List Methods
Strings are not the only Python types that have methods associated with them. Lists, floats, integers and booleans are also types that come packaged with a bunch of useful methods. In this exercise, you'll be experimenting with:

* [index()](https://docs.python.org/3/library/stdtypes.html#str.index), to get the index of the first element of a list that matches its input and

* [count()](https://docs.python.org/3/library/stdtypes.html#str.count), to get the number of times an element appears in a list.

You'll be working on the list with the area of different parts of a house: `areas`.

### List Methods (2)
Most list methods will change the list they're called on. Examples are:

* [append()](https://docs.python.org/3/library/stdtypes.html#typesseq-mutable), that adds an element to the list it is called on,

* [remove()](https://docs.python.org/3/library/stdtypes.html#typesseq-mutable), that removes the first element of a list that matches the input, and

* [reverse()](https://docs.python.org/3/library/stdtypes.html#typesseq-mutable), that reverses the order of the elements in the list it is called on.

You'll be working on the list with the area of different parts of the house: `areas`.

### Import package
As a data scientist, some notions of geometry never hurt. Let's refresh some of the basics.

For a fancy clustering algorithm, you want to find the circumference, **C**, and area, **A**, of a circle. When the radius of the circle is `r`, you can calculate **C** and **A** as:


**C** = **2 * pi * r**

$$A = \pi r^2$$










