### Writing list comprehensions
You now have all the knowledge necessary to begin writing list comprehensions! Your job in this exercise is to write a list comprehension that produces a list of the squares of the numbers ranging from 0 to 9.

### Nested list comprehensions
Great! At this point, you have a good grasp of the basic syntax of list comprehensions. Let's push your code-writing skills a little further. In this exercise, you will be writing a list comprehension within another list comprehension, or nested list comprehensions. It sounds a little tricky, but you can do it!

Let's step aside for a while from strings. One of the ways in which lists can be used are in representing multi-dimension objects such as **matrices**. Matrices can be represented as a list of lists in Python. For example a 5 x 5 matrix with values `0` to `4` in each row can be written as:

```python
matrix = [[0, 1, 2, 3, 4],
          [0, 1, 2, 3, 4],
          [0, 1, 2, 3, 4],
          [0, 1, 2, 3, 4],
          [0, 1, 2, 3, 4]]
```

Your task is to recreate this matrix by using nested listed comprehensions. Recall that you can create one of the rows of the matrix with a single list comprehension. To create the list of lists, you simply have to supply the list comprehension as the **output expression** of the overall list comprehension:

`[`\[*output expression*\] `for` *iterator variable* `in` *iterable*`]`

Note that here, the **output expression** is itself a list comprehension.

### Using conditionals in comprehensions (1)
You've been using list comprehensions to build lists of values, sometimes using operations to create these values.

An interesting mechanism in list comprehensions is that you can also create lists with values that meet only a certain condition. One way of doing this is by using conditionals on iterator variables. In this exercise, you will do exactly that!

Recall from the video that you can apply a conditional statement to test the iterator variable by adding an `if` statement in the optional predicate expression part after the `for` statement in the comprehension:

`[` *output expression* `for` *iterator variable* `in` *iterable* `if` *predicate expression* `]`.

You will use this recipe to write a list comprehension for this exercise. You are given a list of strings `fellowship` and, using a list comprehension, you will create a list that only includes the members of `fellowship` that have 7 characters or more.

### Using conditionals in comprehensions (2)
In the previous exercise, you used an `if` conditional statement in the predicate expression part of a list comprehension to evaluate an iterator variable. In this exercise, you will use an `if-else` statement on the *output* expression of the list.

You will work on the same list, `fellowship` and, using a list comprehension and an `if-else` conditional statement in the output expression, create a list that keeps members of `fellowship` with 7 or more characters and replaces others with an empty string. Use `member` as the iterator variable in the list comprehension.

### Dict comprehensions
Comprehensions aren't relegated merely to the world of lists. There are many other objects you can build using comprehensions, such as dictionaries, pervasive objects in Data Science. You will create a dictionary using the comprehension syntax for this exercise. In this case, the comprehension is called a **dict comprehension**.

Recall that the main difference between a list comprehension and a *dict comprehension* is the use of curly braces `{}` instead of `[]`. Additionally, members of the dictionary are created using a colon `:`, as in `<key> : <value>`.

You are given a list of strings fellowship and, using a **dict comprehension**, create a dictionary with the members of the list as the keys and the length of each string as the corresponding values.
