n = readline.to_i
arr = readline.split(' ').collect(&:to_i)
ret = 0
while !arr.empty?
  a = arr.uniq
  ret += a.length - 1
  a.each do |num|
    arr.delete_at(arr.find_index(num))
  end
end
puts ret
