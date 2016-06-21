n, m, k = readline.split(' ').collect(&:to_i)
arr = readline.split(' ').collect(&:to_i)
sum = 0
n.times do
  items = readline.split(' ').collect(&:to_i)
  items.each do |item|
    sum += arr.index(item) + 1
    arr.delete item
    arr.insert(0, item)
  end
end
puts sum
