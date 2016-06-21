n, h, k = readline.split(' ').collect(&:to_i)
arr = readline.split(' ').collect(&:to_i)
left = 0
ct = 0
arr.each do |num|
  if left + num > h
    left = num
    ct += 1
  else
    left += num
  end
  ct += (left / k)
  left %= k
end

ct += 1 if left > 0
puts ct
