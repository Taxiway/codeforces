n = readline.to_i
m = readline.split(' ').collect(&:to_i)
r = readline.split(' ').collect(&:to_i)
puts (1..720720).count{|n| m.zip(r).detect{|mm,rr| n % mm == rr} != nil} / 720720.0
