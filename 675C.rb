n = readline.to_i
arr = readline.split(' ').collect(&:to_i)
mp = Hash.new(0)
best = 0
sum = 0
arr.each do |num|
  sum += num
  mp[sum] += 1
  best = [best, mp[sum]].max
end
puts n - best
