n, m = readline.split(' ').collect(&:to_i)
h = Hash[readline.split(' ').collect(&:to_i).collect{|num| [num, true]}]
res = []
ct = 0
left = m

1.upto(m) do |item|
  if item > left
    break
  end
  if !h.has_key?(item)
    res.push(item)
    left -= item
    ct += 1
  end
end

puts ct
res.each_with_index do |item, ind|
  if ind != 0
    print " "
  end
  print item
end
puts ""
