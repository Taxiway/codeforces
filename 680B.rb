n, i = readline.split(' ').collect(&:to_i)
arr = readline.split(' ').collect(&:to_i)
i -= 1
map = Hash.new(0)
arr.each_with_index do |num, ind|
  map[(ind - i).abs] += num
end
arr.each_with_index do |num, ind|
  map[(ind - i).abs] *= num
end
puts map.values.inject(0, :+)

