## Case Study: Hacker Statistics
This chapter blends together everything you've learned up to now. You will use hacker statistics to calculate your chances of winning a bet. Use random number generators, loops and matplotlib to get the competitive edge!

### Random float
Randomness has many uses in science, art, statistics, cryptography, gaming, gambling, and other fields. You're going to use randomness to simulate a game.

All the functionality you need is contained in the random package, a sub-package of `numpy`. In this exercise, you'll be using two functions from this package:

* [seed()](http://docs.scipy.org/doc/numpy-1.10.1/reference/generated/numpy.random.seed.html) sets the random seed, so that your results are the reproducible between simulations. As an argument, it takes an integer of your choosing. If you call the function, no output will be generated.

* [rand()](http://docs.scipy.org/doc/numpy-1.10.1/reference/generated/numpy.random.seed.html): if you don't specify any arguments, it generates a random float between zero and one.

### Roll the dice
In the previous exercise, you used [rand()](http://docs.scipy.org/doc/numpy-1.10.1/reference/generated/numpy.random.rand.html), that generates a random float between 0 and 1.

As Filip explained in the video you can just as well use [randint()](http://docs.scipy.org/doc/numpy-1.10.1/reference/generated/numpy.random.randint.html), also a function of the random package, to generate integers randomly. The following call generates the integer 4, 5, 6 or 7 randomly. **8 is not included**.

```python
import numpy as np
np.random.randint(4, 8)
```

Numpy has already been imported as np and a seed has been set. Can you roll some dice?

### Determine your next move
In the Empire State Building bet, your next move depends on the number of eyes you throw with the dice. We can perfectly code this with an `if`-`elif`-`else` construct!

The sample code assumes that you're currently at step 50. Can you fill in the missing pieces to finish the script? `numpy` is already imported as `np` and the seed has been set to `123`, so you don't have to worry about that anymore.

### The next step
Before, you have already written Python code that determines the next step based on the previous step. Now it's time to put this code inside a `for` loop so that we can simulate a random walk.

### How low can you go?
Things are shaping up nicely! You already have code that calculates your location in the Empire State Building after 100 dice throws. However, there's something we haven't thought about - you can't go below 0!

A typical way to solve problems like this is by using [max()](https://docs.python.org/3/library/functions.html#max). If you pass [max()](https://docs.python.org/3/library/functions.html#max) two arguments, the biggest one gets returned. For example, to make sure that a variable x never goes below 10 when you decrease it, you can use:

```python
x = max(10, x - 1)
```

### Visualize the walk
Let's visualize this random walk! Remember how you could use `matplotlib` to build a line plot?

```python
import matplotlib.pyplot as plt
plt.plot(x, y)
plt.show()
```

The first list you pass is mapped onto the `x` axis and the second list is mapped onto the `y` axis.

If you pass only one argument, Python will know what to do and will use the index of the list to map onto the `x` axis, and the values in the list onto the `y` axis.

### Simulate multiple walks
A single random walk is one thing, but that doesn't tell you if you have a good chance at winning the bet.

To get an idea about how big your chances are of reaching 60 steps, you can repeatedly simulate the random walk and collect the results. That's exactly what you'll do in this exercise.

The sample code already sets you off in the right direction. Another for loop is wrapped around the code you already wrote. It's up to you to add some bits and pieces to make sure all of the results are recorded correctly.

**Note: Don't change anything about the initialization of all_walks that is given. Setting any number inside the list will cause the exercise to crash!**

### Visualize all walks
`all_walks` is a list of lists: every sub-list represents a single random walk. If you convert this list of lists to a Numpy array, you can start making interesting plots! `matplotlib.pyplot` is already imported as `plt`.

The nested `for` loop is already coded for you - don't worry about it. For now, focus on the code that comes after this `for` loop.

### Implement clumsiness
With this neatly written code of yours, changing the number of times the random walk should be simulated is super-easy. You simply update the [range()](https://docs.python.org/3/library/functions.html#func-range) function in the top-level `for` loop.

There's still something we forgot! You're a bit clumsy and you have a 0.1% chance of falling down. That calls for another random number generation. Basically, you can generate a random float between `0` and `1`. If this value is less than or equal to 0.001, you should reset step to 0.

### Plot the distribution
All these fancy visualizations have put us on a sidetrack. We still have to solve the million-dollar problem: *What are the odds that you'll reach 60 steps high on the Empire State Building?*

Basically, you want to know about the end points of all the random walks you've simulated. These end points have a certain distribution that you can visualize with a histogram.

Note that if your code is taking too long to run, you might be plotting a histogram of the wrong data!