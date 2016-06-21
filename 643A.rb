n = readline.to_i
arr = readline.split(' ').collect(&:to_i)
res = [0] * n
0.upto(arr.length - 1) do |ind|
  hash = Hash.new(0)
  best, besti = 0, 0
  arr[ind..-1].each do |x|
    hash[x] += 1
    if hash[x] > best || hash[x] == best && x < besti
      best = hash[x]
      besti = x
    end
    res[besti - 1] += 1
  end
end
res.each_with_index do |num, ind|
  if ind != 0
    print " "
  end
  print num
end
puts ""
