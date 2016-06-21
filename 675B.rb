arr = readline.split(' ').collect(&:to_i)
n = arr[0]
arr = arr[1..-1]
a = [arr[0] + arr[1], arr[0] + arr[2], arr[1] + arr[3], arr[2] + arr[3]]
d = a.max - a.min
c = [0, n - d].max
puts c * n
