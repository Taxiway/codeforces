def cal hash
  hash.values.map{|n| n * (n - 1) / 2}.reduce(0, :+)
end

n = readline.to_i
hx, hy, hxy = Hash.new(0), Hash.new(0), Hash.new(0)
n.times do
  x, y = readline.split(' ').collect(&:to_i)
  hx[x] += 1
  hy[y] += 1
  hxy[[x, y]] += 1
end

puts cal(hx) + cal(hy) - cal(hxy)
