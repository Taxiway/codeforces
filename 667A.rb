d, h, v, e = readline.split(' ').collect(&:to_i)
pi = Math.acos(-1.0)
inc = e * pi * d * d / 4.0
if inc >= v
  puts "NO"
else
  puts "YES"
  puts (pi * d * d / 4.0 * h) / (v - inc)
end
