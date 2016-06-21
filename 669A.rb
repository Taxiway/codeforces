n = readline.to_i
ct = n / 3
ct *= 2
if n % 3 != 0
  ct += 1
end
puts ct
