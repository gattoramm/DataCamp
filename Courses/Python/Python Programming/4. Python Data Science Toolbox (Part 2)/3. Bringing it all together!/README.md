## Bringing it all together!
This chapter will allow you to apply your newly acquired skills towards wrangling and extracting meaningful information from a real-world dataset - the World Bank's World Development Indicators dataset! You'll have the chance to write your own functions and list comprehensions as you work with iterators and generators and solidify your Python Data Science chops. Enjoy!

### Dictionaries for data science
For this exercise, you'll use what you've learned about the `zip()` function and combine two lists into a dictionary.

These lists are actually extracted from a [bigger dataset file of world development indicators from the World Bank](http://data.worldbank.org/data-catalog/world-development-indicators). For pedagogical purposes, we have pre-processed this dataset into the lists that you'll be working with.

The first list `feature_names` contains header names of the dataset and the second list `row_vals` contains actual values of a row from the dataset, corresponding to each of the header names.

### Writing a function to help you
Suppose you needed to repeat the same process done in the previous exercise to many, many rows of data. Rewriting your code again and again could become very tedious, repetitive, and unmaintainable.

In this exercise, you will create a function to house the code you wrote earlier to make things easier and much more concise. Why? This way, you only need to call the function and supply the appropriate lists to create your dictionaries! Again, the lists `feature_names` and `row_vals` are preloaded and these contain the header names of the dataset and actual values of a row from the dataset, respectively.

### Using a list comprehension
This time, you're going to use the `lists2dict()` function you defined in the last exercise to turn a bunch of lists into a list of dictionaries with the help of a list comprehension.

The `lists2dict()` function has already been preloaded, together with a couple of lists, `feature_names` and `row_lists`. `feature_names` contains the header names of the World Bank dataset and `row_lists` is a list of lists, where each sublist is a list of actual values of a row from the dataset.

Your goal is to use a list comprehension to generate a list of dicts, where the keys are the header names and the *values* are the row entries.

### Turning this all into a DataFrame
You've zipped lists together, created a function to house your code, and even used the function in a list comprehension to generate a list of dictionaries. That was a lot of work and you did a great job!

You will now use of all these to convert the list of dictionaries into a pandas DataFrame. You will see how convenient it is to generate a DataFrame from dictionaries with the `DataFrame()` function from the pandas package.

The `lists2dict()` function, `feature_names` list, and `row_lists` list have been preloaded for this exercise.

Go for it!

### Processing data in chunks (1)
Sometimes, data sources can be so large in size that storing the entire dataset in memory becomes too resource-intensive. In this exercise, you will process the first 1000 rows of a file line by line, to create a dictionary of the counts of how many times each country appears in a column in the dataset.

The csv file `'world_dev_ind.csv'` is in your current directory for your use. To begin, you need to open a connection to this file using what is known as a context manager. For example, the command `with open('datacamp.csv') as datacamp` binds the csv file `'datacamp.csv'` as datacamp in the context manager. Here, the with statement is the context manager, and its purpose is to ensure that resources are efficiently allocated when opening a connection to a file.

If you'd like to learn more about context managers, refer to the [DataCamp course on Importing Data in Python]().

### Writing a generator to load data in chunks (2)
In the previous exercise, you processed a file line by line for a given number of lines. What if, however, you want to do this for the entire file?

In this case, it would be useful to use **generators**. Generators allow users to [lazily evaluate data](http://www.blog.pythonlibrary.org/2014/01/27/python-201-an-intro-to-generators/). This concept of lazy evaluation is useful when you have to deal with very large datasets because it lets you generate values in an efficient manner by yielding only chunks of data at a time instead of the whole thing at once.

In this exercise, you will define a generator function `read_large_file()` that produces a generator object which yields a single line from a file each time `next()` is called on it. The csv file `'world_dev_ind.csv'` is in your current directory for your use.

Note that when you open a connection to a file, the resulting file object is already a generator! So out in the wild, you won't have to explicitly create generator objects in cases such as this. However, for pedagogical reasons, we are having you practice how to do this here with the `read_large_file()` function. Go for it!

### Writing a generator to load data in chunks (3)
Great! You've just created a generator function that you can use to help you process large files.

Now let's use your generator function to process the World Bank dataset like you did previously. You will process the file line by line, to create a dictionary of the counts of how many times each country appears in a column in the dataset. For this exercise, however, you won't process just 1000 rows of data, you'll process the entire dataset!

The generator function `read_large_file()` and the csv file `'world_dev_ind.csv'` are preloaded and ready for your use. Go for it!

### Writing an iterator to load data in chunks (1)
Another way to read data too large to store in memory in chunks is to read the file in as DataFrames of a certain length, say, 100. For example, with the pandas package (imported as `pd`), you can do `pd.read_csv(filename, chunksize=100)`. This creates an iterable **reader object**, which means that you can use `next()` on it.

In this exercise, you will read a file in small DataFrame chunks with `read_csv()`. You're going to use the World Bank Indicators data `'ind_pop.csv'`, available in your current directory, to look at the urban population indicator for numerous countries and years.

### Writing an iterator to load data in chunks (2)
In the previous exercise, you used `read_csv()` to read in DataFrame chunks from a large dataset. In this exercise, you will read in a file using a bigger DataFrame chunk size and then process the data from the first chunk.

To process the data, you will create another DataFrame composed of only the rows from a specific country. You will then zip together two of the columns from the new DataFrame, `'Total Population'` and `'Urban population (% of total)'`. Finally, you will create a list of tuples from the zip object, where each tuple is composed of a value from each of the two columns mentioned.

You're going to use the data from `'ind_pop_data.csv'`, available in your current directory. Pandas has been imported as `pd`.

### Writing an iterator to load data in chunks (3)
You're getting used to reading and processing data in chunks by now. Let's push your skills a little further by adding a column to a DataFrame.

Starting from the code of the previous exercise, you will be using a *list comprehension* to create the values for a new column `'Total Urban Population'` from the list of tuples that you generated earlier. Recall from the previous exercise that the first and second elements of each tuple consist of, respectively, values from the columns `'Total Population'` and `'Urban population (% of total)'`. The values in this new column `'Total Urban Population'`, therefore, are the product of the first and second element in each tuple. Furthermore, because the 2nd element is a percentage, you need to divide the entire result by `100`, or alternatively, multiply it by `0.01`.

You will also plot the data from this new column to create a visualization of the urban population data.

The packages `pandas` and `matplotlib.pyplot` have been imported as `pd` and `plt` respectively for your use.

### Writing an iterator to load data in chunks (4)
In the previous exercises, you've only processed the data from the first DataFrame chunk. This time, you will aggregate the results over all the DataFrame chunks in the dataset. This basically means you will be processing the entire dataset now. This is neat because you're going to be able to process the entire large dataset by just working on smaller pieces of it!

You're going to use the data from `'ind_pop_data.csv'`, available in your current directory. The packages `pandas` and `matplotlib.pyplot` have been imported as `pd` and `plt` respectively for your use.

### Writing an iterator to load data in chunks (5)
This is the last leg. You've learned a lot about processing a large dataset in chunks. In this last exercise, you will put all the code for processing the data into a single function so that you can reuse the code without having to rewrite the same things all over again.

You're going to define the function `plot_pop()` which takes two arguments: the filename of the file to be processed, and the country code of the rows you want to process in the dataset.

Because all of the previous code you've written in the previous exercises will be housed in `plot_pop()`, calling the function already does the following:

* Loading of the file chunk by chunk,
* Creating the new column of urban population values, and
* Plotting the urban population data.

That's a lot of work, but the function now makes it convenient to repeat the same process for whatever file and country code you want to process and visualize!

You're going to use the data from `'ind_pop_data.csv'`, available in your current directory. The packages pandas and matplotlib.pyplot has been imported as `pd` and `plt` respectively for your use.

After you are done, take a moment to look at the plots and reflect on the new skills you have acquired. The journey doesn't end here! If you have enjoyed working with this data, you can continue exploring it using the pre-processed version available on [Kaggle](https://www.kaggle.com/worldbank/world-development-indicators).
