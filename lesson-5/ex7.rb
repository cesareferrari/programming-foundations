#Given this code, what would be the final values of a and b?

a = 2
b = [5, 8]
arr = [a, b] # [2, [5, 8]]

arr[0] += 2
arr[1][0] -= a
