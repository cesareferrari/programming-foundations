---
title: 'Convert an integer to a string'
created: '1-11-2017'
---

In the past few days we wrote methods to [convert strings of digits to numbers](https://medium.com/@cesareferrari/convert-a-string-of-digits-into-its-corresponding-integer-72187a035dcc#.yiejkyrey).

Today we have the opposite problem. We need to write a method that converts an integer number into its string representation.

For example, if we pass the number 4321 as an argument to our method, we want the returned result to be the string '4321'.

Our method will be called _integer_to_string_ and below are some examples of its output:

```
integer_to_string(4321) # => '4321'
integer_to_string(0) # => '0'
integer_to_string(5000) # => '5000'
```

As before, we have a limitation in implementing this method: we cannot use the standard Ruby conversion methods for converting numbers to string, but we have to implement the conversion ourselves.

##Preliminary ideas

Similar to the previous methods we wrote, we need some kind of mapping to convert a number to its corresponding string. We will use a Hash, as before, that maps a number to its string:

```
STRINGS = {
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9',
  0 => '0'
}
```

Now we only need to extract each number in turn from the given integer and progressively add it to a string to build our result. How do we do that?

We notice that using the modulo operator on a number divided by 10 returns the last digit of the number.

```
4321 % 10  # => 1
```

We also notice that dividing an integer by 10 effectively eliminates the last digit and returns an integer with the first 3 digits.

```
4321 / 10  # => 432
```

If we combine these two facts we realize that we can extract the last digit from a given integer and we can also remove the last digit from it.

We can look up the removed digit with our STRINGS map and find out the correct string representation for the digit, so the number 1 will be mapped to the string '1' and the number 2 will be mapped to the string '2' and so on.

Here's the beginning of our method:

```
def integer_to_string(int)
  string = ''

  string << (STRINGS[int % 10])
  int /= 10

  string
end
```

We first define a _string_ variable to hold our final result. Then we take our integer and extract the last digit by using

```
int % 10
```

Then we look up our STRINGS hash for the string corresponding to this number and add this to the _string_ variable, which we return on the last line of the method.

```
string << (STRINGS[int % 10])
```

Our method performs the operation only once, so it's not complete, but it's a good start. All we have to do at this point is add in a loop to iterate through all the digits in the given integer, and perform the same operation on each one of them. Simple enough:

```
loop do
  string.prepend(STRINGS[int % 10])
  break if int / 10 == 0
  int /= 10
end
```

We could add the digits to the end of the _string_ variable and then reverse the string before output.
Another way of doing it is to use the _prepend_ method of the _String_.  This method, like the name says, just prepends its argument to the string, so the digits will be added to the left of the string object.

##Every loop needs a break

The way we exit the loop is to check if integer / 10 is equal to zero.
This happens when the number has reached zero, in other words, when the initial number is empty.
It means that our job is done and we don't have any more numbers to look up.

The final method is here:

```
def integer_to_string(int)
  string = ''

  loop do
    string.prepend(STRINGS[int % 10])
    break if int / 10 == 0
    int /= 10
  end

  string
end
```

There is another way to extract the digits from our integer by using the _divmod_ method.  I will explore this in a future post.




