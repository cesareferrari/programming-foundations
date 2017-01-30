---
title: 'Convert an integer to a string, alternative method'
created: '1-12-2017'
---

I have already examined how to convert an integer to its string representation [here](https://medium.com/@cesareferrari/convert-an-integer-to-a-string-4865e6f8d72#.5d04bs1fv).

A different way of doing it involves using the _Numeric#divmod_ method.

This method, divides a number by a divisor and returns the quotient and the remainder in an array.

For example:

```
4321.divmod(10) # returns [432, 1]
```

We can apply this method to separate the given integer into its individual digits and convert these digits into characters by using a loop as before:

```
loop do
  int, digit = int.divmod(10)
  string.prepend(STRINGS[digit])
  break if int == 0
end
```

This will achieve the same exact result as the method described in the
[previous post](https://medium.com/@cesareferrari/convert-an-integer-to-a-string-4865e6f8d72#.5d04bs1fv):

```
def integer_to_string(int)
  string = ''

  loop do
    int, digit = int.divmod(10)
    string.prepend(STRINGS[digit])
    break if int == 0
  end

  string
end
```
