#Bannerizer

Write a method that will take a short line of text, and print it within a box.

Input: string
output: print string

Rules:

output horizontal line (same length as text)
output empty line (same length as text)
output text (padded with spaces)
output empty line
output horizontal line

Example:

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
print_in_box('')
+--+
|  |
|  |
|  |
+--+



line = "+-#{string.length}-+"
empty_line = "| #(string.length} |"
text = " #{string} "
