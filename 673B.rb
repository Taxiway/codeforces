n, m = readline.split(' ').collect(&:to_i)
cmin, cmax = 0, n - 2
m.times do
  a, b = readline.split(' ').collect(&:to_i)
  a, b = [a - 1, b - 1].sort
  cmin = [cmin, a].max
  cmax = [cmax, b - 1].min
end
puts [cmax - cmin + 1, 0].max


