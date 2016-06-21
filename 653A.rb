n = readline.to_i
arr = readline.split(' ').collect(&:to_i).sort.uniq
found = false
0.upto(arr.length - 3) do |ind|
  if arr[ind] + 1 == arr[ind + 1] and arr[ind] + 2 == arr[ind + 2]
    found = true
    break
  end
end

if found
  puts "YES"
else
  puts "NO"
end
