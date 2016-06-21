a, b, c = readline.split(' ').collect(&:to_i)
b += c
while b <= 0
  b += a
end
while b > a
  b -= a
end
puts b
