n, t = readline.split(' ').collect(&:to_i)
arr = Array.new(n) {|i| Array.new(i + 1, 0.0)}
t.times do
  arr[0][0] += 1.0
  0.upto(n - 2) do |i|
    0.upto(i) do |j|
      if arr[i][j] > 1.0
        left = arr[i][j] - 1.0
        arr[i + 1][j] += left / 2.0
        arr[i + 1][j + 1] += left / 2.0
        arr[i][j] = 1.0
      end
    end
  end
end

puts arr.inject(0) {|sum, a|
  sum + a.count {|num| num >= 1.0}
}
