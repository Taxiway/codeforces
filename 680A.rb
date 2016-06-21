arr = readline.split(' ').collect(&:to_i)
map = Hash.new(0)
arr.each {|num| map[num] += 1}
sum = arr.inject(0, :+)
best = sum
arr.each do |num|
  if map[num] >= 2
    res = sum - num * [3, map[num]].min
    best = [res, best].min
  end
end
puts best
