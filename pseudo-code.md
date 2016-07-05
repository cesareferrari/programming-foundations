# Pseudo Code #

Example of pseudo code

```
Given a collection of integers.

Iterate through the collection one by one
  - save the first value as the starting value.
  - for each iteration, compare the current value to the saved value
  - if the saved value is greater or the same
    - move to the next value in the collection
  - otherwise if the current value is greater
    - reassign the saved value as the current value

After iterating through the collection, return the saved value.
```


## Keywords ##

Keyword             | Meaning
--------------------|-----------------------------------
START               | start of the program
SET                 | sets a variable we can use later
GET                 | retrieve input from user
PRINT               | display output to user
READ                | retrieve value from variable
IF / ELSE IF / ELSE | show conditional branches in logic
WHILE               | show looping logic
END                 | end of the program


## Pseudo code with Keywords ##

```
START

# Given a collection of integers called "numbers"

SET iterator = 1
SET saved_number = value within numbers collection at space 1

WHILE iterator < length of numbers
  SET current_number = value within numbers collection at space "iterator"
  IF saved_number >= current_number
    go to the next iteration
  ELSE
    saved_number = current_number

  iterator = iterator + 1

  PRINT saved_number

END

```

