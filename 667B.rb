n = readline.to_i
arr = readline.split(' ').collect(&:to_i).sort.reverse
puts 1 + arr[0] - arr[1..-1].inject(0, :+)
