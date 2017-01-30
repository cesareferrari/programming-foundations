---
title: 'Convert a string of digits into its corresponding integer, alternative solution'
created: '1-9-2017'
---

We already [found a solution](https://medium.com/@cesareferrari/convert-a-string-of-digits-into-its-corresponding-integer-72187a035dcc#.fagbw7ymc) to the problem of converting a string of digits into its corresponding integer.

Here's a slightly different solution that can be applied to the same problem.

We use the same converting hash used before:

```
DIGITS = { '1' => 1,
           '2' => 2,
           '3' => 3,
           '4' => 4,
           '5' => 5,
           '6' => 6,
           '7' => 7,
           '8' => 8,
           '9' => 9,
           '0' => 0 }
```

This hash maps each digit to its corresponding integer.

The first step is to create an array of integers by converting the digits in the given string.

```
digits = string.chars.map {|char| DIGITS[char]}
```

`string.chars` returns an array of all the characters present in the string. We then map each character to its corresponding integer using the `map` method.

The `map` method also returns an array, but this time the array contains integers.
So, if our initial string is '4321', the `digits` array will be an array that contains:

```
[4, 3, 2, 1]
```

Now that we have all our digits, we iterate through each digit, using the `each` method and add each integer to a result to build our final number.
The result is initialized to zero and is an accumulator that holds our final number through each iteration.

Since we need to add the number to the result in the correct position, we need to multiply the result by 10 every time through the iteration.  
Here's how we do it:

```
result = 0
digits.each {|digit| result = result * 10 + digit}
```

At the end of all the iterations, `result` will contain the final number. Now, all we have to do is return `result` at the end of the `string_to_integer` method.

Here's the full method:

```
def string_to_integer(string)
  digits = string.chars.map {|char| DIGITS[char]}

  result = 0
  digits.each {|digit| result = result * 10 + digit}

  result
end
```

This method still doesn't verify its input, and it has problems converting negative numbers.
We will tackle those problems in future posts.
