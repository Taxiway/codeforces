n = readline.to_i
arr = readline.split(' ').collect(&:to_i).sort
arr[0..(n / 2)].zip(arr[(n / 2 + 1)..-1]).flatten.compact.each_with_index do |num, ind|
  print " " if ind != 0
  print num
end
puts ""
