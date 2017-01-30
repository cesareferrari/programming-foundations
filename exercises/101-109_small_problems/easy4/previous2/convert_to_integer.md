Today's problem is to write a method that converts a string of digits
into a real integer.

The method will perform the same function as the standard Ruby `String#to_i` method.

The method will be called `string_to_integer` and will take one
parameter, a string of digits, like '4321'.

For now, we will assume all characters in the string are numeric so
there is no verification in the method itself.

To start with I need to create some sort of mapping between the string
digits and the corresponding number, so the digit can be substituted by
the number when it's necessary.

One method that I can use to build this mapping is to use a hash that
maps a digit to its corresponding number. I am putting this hash into a
constant that can be referred by the method later.

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

As we can see, the digit '1' in the string is mapped to the integer 1,
the string '2' is mapped to the integer 2, and so on.

My initial idea to implement this method is to read the digits from
right to left.

So, if the string is '4321', the last digit ('1') is at the
ones position. The second digit from the right ('2') is at the tens
position. The third digit is at the hundreds position and the last digit
is at the thousands position.

So, we have this concept of number position to take into account.

We also have the concept of an accumulator, that is a variable that
holds the final number while we are processing it.

The accumulator is itself a digit and the initial value is zero.

So, we can start writing our method by initializing these two variables:
the `result` variable, and the `position` variable.
Since we start examining the number from the right, we need to
initialize the `position` variable to 1, which represents the ones
position.

```
def string_to_integer(string)
  result = 0
  position = 1

  # further code here
end
```

The next step is to build up the number. Since we start examining the
digits from the right, I can reverse the string and iterate through the
numbers one by one.

The first digit will be converted into its integer representation by
looking up the DIGITS hash, so, for example, the string '1' is converted
into the integer 1.

Step 2 is to add this integer into the right position, so we multiply it
by the current position, which is the ones.

Finally, we can add the number to the temporary result and move to the
next digit.

```
result += DIGITS[char] * position
```

For the first digit ('1'), DIGITS[char] will return 1.
At this point, the `position` variable is `1`, so we multiply `1 * 1`,
which returns `1`.
Then we add this to the result variable, which is 0. When we add `1` to
`0` we get `1`.

After having added the digit in the ones position, we must move on to
the tenths position, so we need to modify the `position` variable to
represent the tenths. We do this by multiplying `position` by 10.

```
position *= 10
```

The iteration for all the digits in the string is shown below:

```
string.reverse.chars.each do |char|
  result += DIGITS[char] * position
  position *= 10
end
```

Each digit is converted to an integer and added from right to left in
the correct position.

The end result is the string converted to an integer, so the last
task our method has is to return the result of the whole
operation.

Here's the full method:

```
def string_to_integer(string)
  result = 0
  position = 1

  string.reverse.chars.each do |char|
    result += DIGITS[char] * position
    position *= 10
  end

  result
end
```
