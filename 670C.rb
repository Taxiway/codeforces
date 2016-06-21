n = readline.to_i
arr = readline.split(' ').collect(&:to_i)
map = Hash.new(0)
arr.each{|n| map[n] = map[n] + 1}

m = readline.to_i
b = readline.split(' ').collect(&:to_i)
c = readline.split(' ').collect(&:to_i)
besti, bestb, bestc = -1, -1, -1
b.zip(c).each_with_index do |item, ind|
  bb, cc = item
  thisb, thisc = map[bb], map[cc]
  if thisb > bestb || thisb == bestb && thisc > bestc
    besti, bestb, bestc = ind, thisb, thisc
  end
end

puts besti + 1
