## Dictionaries & Pandas
Learn about the dictionary, an alternative to the Python list, and the Pandas DataFrame, the de facto standard to work with tabular data in Python. You will get hands-on practice with creating, manipulating and accessing the information you need from these data structures.

### Motivation for dictionaries
To see why dictionaries are useful, have a look at the two lists defined on the right. `countries` contains the names of some European countries. `capitals` lists the corresponding names of their capital.

### Create dictionary
The `countries` and `capitals` lists are again available in the script. It's your job to convert this data to a dictionary where the country names are the keys and the capitals are the corresponding values. As a refresher, here is a recipe for creating a dictionary:

```python
my_dict = {
   "key1":"value1",
   "key2":"value2",
}
```

In this recipe, both the keys and the values are strings. This will also be the case for this exercise.

### Access dictionary
If the keys of a dictionary are chosen wisely, accessing the values in a dictionary is easy and intuitive. For example, to get the capital for France from `europe` you can use:

```python
europe['france']
```

Here, `'france'` is the key and `'paris'` the value is returned.

### Dictionary Manipulation (1)
If you know how to access a dictionary, you can also assign a new value to it. To add a new key-value pair to `europe` you can use something like this:

```python
europe['iceland'] = 'reykjavik'
```

### Dictionary Manipulation (2)
Somebody thought it would be funny to mess with your accurately generated dictionary. An adapted version of the `europe` dictionary is available in the script on the right.

Can you clean up? Do not do this by adapting the definition of `europe`, but by adding Python commands to the script to update and remove key:value pairs.

### Dictionariception
Remember lists? They could contain anything, even other lists. Well, for dictionaries the same holds. Dictionaries can contain key:value pairs where the values are again dictionaries.

As an example, have a look at the script where another version of `europe` - the dictionary you've been working with all along - is coded. The keys are still the country names, but the values are dictionaries that contain more information than just the capital.

It's perfectly possible to chain square brackets to select elements. To fetch the population for Spain from `europe`, for example, you need:

```python
europe['spain']['population']
```

### Dictionary to DataFrame (1)
Pandas is an open source library, providing high-performance, easy-to-use data structures and data analysis tools for Python. Sounds promising!

The DataFrame is one of Pandas' most important data structures. It's basically a way to store tabular data where you can label the rows and the columns. One way to build a DataFrame is from a dictionary.

In the exercises that follow you will be working with vehicle data from different countries. Each observation corresponds to a country and the columns give information about the number of vehicles per capita, whether people drive left or right, and so on.

Three lists are defined in the script:

* `names`, containing the country names for which data is available.

* `dr`, a list with booleans that tells whether people drive left or right in the corresponding country.

* `cpc`, the number of motor vehicles per 1000 people in the corresponding country.

Each dictionary key is a column label and each value is a list which contains the column elements.

### Dictionary to DataFrame (2)
The Python code that solves the previous exercise is included on the right. Have you noticed that the row labels (i.e. the labels for the different observations) were automatically set to integers from 0 up to 6?

To solve this a list `row_labels` has been created. You can use it to specify the row labels of the `cars` DataFrame. You do this by setting the `index` attribute of `cars`, that you can access as `cars.index`.

### CSV to DataFrame (1)
Putting data in a dictionary and then building a DataFrame works, but it's not very efficient. What if you're dealing with millions of observations? In those cases, the data is typically available as files with a regular structure. One of those file types is the CSV file, which is short for "comma-separated values".

To import CSV data into Python as a Pandas DataFrame you can use [**read_csv()**](http://pandas.pydata.org/pandas-docs/stable/generated/pandas.read_csv.html).

Let's explore this function with the same cars data from the previous exercises. This time, however, the data is available in a CSV file, named `cars.csv`. It is available in your current working directory, so the path to the file is simply `'cars.csv'`.

### CSV to DataFrame (2)
Your [**read_csv()**](http://pandas.pydata.org/pandas-docs/stable/generated/pandas.read_csv.html) call to import the CSV data didn't generate an error, but the output is not entirely what we wanted. The row labels were imported as another column without a name.

Remember `index_col`, an argument of [**read_csv()**](http://pandas.pydata.org/pandas-docs/stable/generated/pandas.read_csv.html), that you can use to specify which column in the CSV file should be used as a row label? Well, that's exactly what you need here!

Python code that solves the previous exercise is already included; can you make the appropriate changes to fix the data import?

### Square Brackets (1)
DataFrames in many different ways. The simplest, but not the most powerful way, is to use square brackets.

In the sample code on the right, the same cars data is imported from a CSV files as a Pandas DataFrame. To select only the `cars_per_cap` column from `cars`, you can use:

```python
cars['cars_per_cap']
cars[['cars_per_cap']]
```
The single bracket version gives a Pandas Series, the double bracket version gives a Pandas DataFrame.

### Square Brackets (2)
Square brackets can do more than just selecting columns. You can also use them to get rows, or observations, from a DataFrame. The following call selects the first five rows from the `cars` DataFrame:

```python
cars[0:5]
```

The result is another DataFrame containing only the rows you specified.

Pay attention: You can only select rows using square brackets if you specify a slice, like `0:4`. Also, you're using the integer indexes of the rows here, not the row labels!

### loc and iloc (1)
With [loc](http://pandas.pydata.org/pandas-docs/stable/indexing.html#different-choices-for-indexing) and [ilochttp://pandas.pydata.org/pandas-docs/stable/indexing.html#different-choices-for-indexing you can do practically any data selection operation on DataFrames you can think of. [loc](http://pandas.pydata.org/pandas-docs/stable/indexing.html#different-choices-for-indexing) is label-based, which means that you have to specify rows and columns based on their row and column labels. [ilochttp://pandas.pydata.org/pandas-docs/stable/indexing.html#different-choices-for-indexing
Try out the following commands in the IPython Shell to experiment with [loc](http://pandas.pydata.org/pandas-docs/stable/indexing.html#different-choices-for-indexing) and [iloc](http://pandas.pydata.org/pandas-docs/stable/indexing.html#different-choices-for-indexing) to select observations. Each pair of commands here gives the same result.

```python
cars.loc['RU']
cars.iloc[4]

cars.loc[['RU']]
cars.iloc[[4]]

cars.loc[['RU', 'AUS']]
cars.iloc[[4, 1]]
```

As before, code is included that imports the cars data as a Pandas DataFrame.

### loc and iloc (2)
`loc` and [iloc](http://pandas.pydata.org/pandas-docs/stable/indexing.html#different-choices-for-indexing) also allow you to select both rows and columns from a DataFrame. To experiment, try out the following commands in the IPython Shell. Again, paired commands produce the same result.

```python
cars.loc['IN', 'cars_per_cap']
cars.iloc[3, 0]

cars.loc[['IN', 'RU'], 'cars_per_cap']
cars.iloc[[3, 4], 0]

cars.loc[['IN', 'RU'], ['cars_per_cap', 'country']]
cars.iloc[[3, 4], [0, 1]]
```

### loc and iloc (3)
It's also possible to select only columns with [loc](http://pandas.pydata.org/pandas-docs/stable/indexing.html#different-choices-for-indexing) and [iloc](http://pandas.pydata.org/pandas-docs/stable/indexing.html#different-choices-for-indexing). In both cases, you simply put a slice going from beginning to end in front of the comma:

```python
cars.loc[:, 'country']
cars.iloc[:, 1]

cars.loc[:, ['country','drives_right']]
cars.iloc[:, [1, 2]]
```