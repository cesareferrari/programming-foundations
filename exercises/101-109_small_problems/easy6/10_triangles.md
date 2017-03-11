Write a method that takes a positive integer, n, as an argument, and
displays a right triangle whose sides each have n stars. The hypotenuse
of the triangle (the diagonal side in the images below) should have one
end at the lower-left of the triangle, and the other end at the
upper-right.

Input: integer
Output: string

Rules:

input == 5
output == 5 rows of 5 characters
row 1: 4 spaces  -  1 star
row 2: 3 spaces  -  2 star
row 3: 2 spaces  -  3 star
row 4: 1 spaces  -  4 star
row 5: 0 spaces  -  5 star

right aligned


Algorithm:

1 up to number
puts "*".rjust(number)


Examples:

triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
