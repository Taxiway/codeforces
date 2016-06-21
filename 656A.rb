n = readline.to_i
puts n <= 12 ? (1 << n) : (8092 << (n - 13))
