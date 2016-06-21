n = readline.to_i
arr = readline.split(' ').collect(&:to_i)
i, j = arr.index(1), arr.index(n)
puts [[i, n - i - 1].max, [j, n - j - 1].max].max
