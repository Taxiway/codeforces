n, q = readline.split(' ').collect(&:to_i)
hash = Hash.new
q.times do
  a, b = readline.split(' ')
  hash[a] = b
end

puts ["a", "b", "c", "d", "e", "f"].repeated_permutation(n).count {|arr|
#  puts arr
  str = arr.join
  while hash.has_key? str[0..1]
    str = hash[str[0..1]] + str[2..-1]
  end
  str == "a"
}
