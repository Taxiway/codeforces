def gcd(a, b)
  if b == 0
    return a
  else
    return gcd(b, a % b)
  end
end

n = readline.to_i
arr = readline.split(' ').collect(&:to_i)
ct = 0
res = []
0.upto(arr.length - 2) do |ind|
  a, b = arr[ind], arr[ind + 1]
  res += [a]
  if gcd(a, b) != 1
    ct += 1
    res += [1]
  end
end
res += [arr.last]
puts ct
res.each_with_index do |n, i|
  if i != 0
    print " "
  end
  print n
end
puts ""
