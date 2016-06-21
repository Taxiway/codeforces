def isok(arr)
  puts arr
  arr.each_cons(2).with_index.count { |pair, ind|
    a, b = pair
    (ind & 1) == 0 && a >= b || (ind & 1) == 1 && a <= b
  } == 0
end

def gao(arr, i, j)
  return false if i < 0 || j >= arr.length
  arr[i], arr[j] = arr[j], arr[i]
  res = isok(arr)
  arr[i], arr[j] = arr[j], arr[i]
  return res
end

n = readline.to_i
arr = readline.split(' ').collect(&:to_i)
index = []
arr.each_cons(2).with_index do |pair, ind|
  a, b = pair
  if (ind & 1) == 0 && a >= b || (ind & 1) == 1 && a <= b
    index.push ind
  end
end
if index.length > 4
  puts 0
end

res = []
puts index

index.repeated_combination(2) do |pair|
  a, b = pair
  ((a-1)..(a+1)).to_a.product(((b-1)..(b+1)).to_a) do |pair2|
    aa, bb = pair.sort
    if gao(arr, aa, bb)
      res.push([aa, bb])
    end
  end
end

puts res.uniq.length
