def gao arr
  last = 0
  arr.each do |n|
    if n - last > 15
      return last + 15
    end
    last = n
  end
  return [90, last + 15].min
end

n = readline.to_i
arr = readline.split(' ').collect(&:to_i)
puts gao arr
