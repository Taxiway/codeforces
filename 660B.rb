n, m = readline.split(' ').collect(&:to_i)
arr = []
1.upto(n) do |i|
  arr += [i * 2 - 1 + n * 2, i * 2 - 1, i * 2 + n * 2, i * 2]
end
arr.keep_if {|num| num <= m}
arr.each_with_index do |num, ind|
  if ind != 0
    print " "
  end
  print num
end
puts ""
