n, k = readline.split(' ').collect(&:to_i)
arr = readline.split(' ').collect(&:to_i)
k -= 1
1.upto(n) do |x|
  if k >= x
    k -= x
  else
    puts arr[k]
    break
  end
end
