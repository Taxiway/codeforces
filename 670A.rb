n = readline.to_i
max, min = 0, 0
max = n / 7
min = n / 7
max *= 2
min *= 2
n %= 7
max += [n, 2].min
min += [0, n - 5].max
print min, " ", max
puts ""
