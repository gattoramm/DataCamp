### Iterators vs Iterables
Let's do a quick recall of what you've learned about **iterables** and **iterators**. Recall from the video that an *iterable* is an object that can return an *iterator*, while an *iterator* is an object that keeps state and produces the next value when you call `next()` on it. In this exercise, you will identify which object is an iterable and which is an *iterator*.

The environment has been pre-loaded with the variables `flash1` and `flash2`. Try printing out their values with `print()` and `next()` to figure out which is an *iterable* and which is an *iterator*.

### Iterating over iterables (1)
Great, you're familiar with what iterables and iterators are! In this exercise, you will reinforce your knowledge about these by iterating over and printing from iterables and iterators.

You are provided with a list of strings `flash`. You will practice iterating over the list by using a `for` loop. You will also create an iterator for the list and access the values from the iterator.

### Iterating over iterables (2)
One of the things you learned about in this chapter is that not all iterables are *actual* lists. A couple of examples that we looked at are *strings* and the use of the `range()` function. In this exercise, we will focus on the `range()` function.

You can use `range()` in a `for` loop as *if* it's a list to be iterated over:

> for i in range(5):
>    print(i)

Recall that `range()` doesn't actually create the list; instead, it creates a range object with an iterator that produces the values until it reaches the limit (in the example, until the value 4). If `range()` created the actual list, calling it with a value of 10<sup>100</sup> may not work, especially since a number as big as that may go over a regular computer's memory. The value 10<sup>100</sup> is actually what's called a **Googol** which is a 1 followed by a hundred 0s. That's a huge number!

Your task for this exercise is to show that calling `range()` with 10<sup>100</sup> won't actually pre-create the list.

### Processing large amounts of Twitter data
Sometimes, the data we have to process reaches a size that is too much for a computer's memory to handle. This is a common problem faced by data scientists. A solution to this is to process an entire data source chunk by chunk, instead of a single go all at once.

In this exercise, you will do just that. You will process a large csv file of Twitter data in the same way that you processed 'tweets.csv' in [Bringing it all together]() exercises of the prequel course, but this time, working on it in chunks of 10 entries at a time.

If you are interested in learning how to access Twitter data so you can work with it on your own system, refer to [Part 2]() of the DataCamp course on Importing Data in Python.

The pandas package has been imported as pd and the file `'tweets.csv'` is in your current directory for your use. Go for it!
