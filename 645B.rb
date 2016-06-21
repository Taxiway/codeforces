n, k = readline.split(' ').collect(&:to_i)
puts (n * 2 - 3).step(1, -4).to_a[0..([k - 1, (n / 2) - 1].min)].inject(0, :+)
