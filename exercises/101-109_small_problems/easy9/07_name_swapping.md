Write a method that takes a first name, a space, and a last name passed
as a single String argument, and returns a string that contains the last
name, a comma, a space, and the first name.

Input: string ['first last']
Output: string ['last, first']

Algorithm:

first, last = string.split(' ')
"#{last}, #{first}"


Examples

swap_name('Joe Roberts') == 'Roberts, Joe'
