---
title: 'Convert a string into a signed integer'
created: '1-10-2017'
---

In a couple of previous posts, [here](https://medium.com/@cesareferrari/convert-a-string-of-digits-into-its-corresponding-integer-72187a035dcc#.ebe4y4uwb) and [here](https://medium.com/@cesareferrari/convert-a-string-of-digits-into-its-corresponding-integer-alternative-solution-a4f56af2d395#.wbltgykle), we saw how to convert a string of digits into its corresponding integer, without using the standard _String#to_i_ or _String#to_int_ method provided by Ruby.

The previous methods we wrote assumed the given string only included positive numbers.

Now we are going to handle signed strings, that is: strings with either a positive or  a negative sign in front of it. Our method will also handle strings that have no sign and will treat them like they have a positive sign.

If the given string has a positive sign or no sign, our method will output a positive integer.

If the given string has a negative sign, the method output a negative integer.

We are going to create a method called _string_to_signed_number_ that will make use of the previous _string_to_number_ method to convert the string of digits to an integer. The new method will only take care of the sign.

The first thing we need to do in our new method is to look at the first digit of the given string. We need to determine if it's a plus sign, a minus sign or just a regular digit.

If the first character is a '+' or '-' sign, we slice it out of the string and save it in a variable:

```
sign = string.slice!(0) if string.start_with?('+', '-')
```

What we just did was look at the first character of the passed-in string, and determine if it's a '+' or a '-' by using the `String#start_with?` method.

_start_with?_ takes 2 parameters in this case, and will return true if either one of them is true. So, if the string starts with a plus or a minus, it will return true. It will return false otherwise, which means that the string starts with a regular digit and has no sign in front of it.

If the string has a sign in front of it, we use the _String#slice!_ method to remove the sign from the string and save it into a variable, called _sign_.

_slice!_ will modify its caller, so if the given string was '-123', it will be converted to '123'.

Now that we have a string without any sign in front of it, we can call the _string_to_integer_ method as before and convert the string into an integer.
We will assign the returned value to a variable called _result_.

```
result = string_to_integer(string)
```

But we still have to deal with the sign. If the sign was a plus or no sign, we really don't have any more work to do and can return this result and quit the method.

If the sign was a _minus_, we need to take one more step and make the integer negative before we return it.  The way we do that is to add a '-' sign in front of our result, like so:

```
-result
```

So, we need another _if_ condition that checks if we do have a _sign_ and if that _sign_ variable is a '-'. If so, we return _-result_:

```
return -result if sign && sign == '-'
```

This is the complete method:

```
def string_to_signed_integer(string)
  sign = string.slice!(0) if string.start_with?('+', '-')
  result = string_to_integer(string)
  return -result if sign && sign == '-'
  result
end
```
