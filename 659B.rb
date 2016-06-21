n, m = readline.split(' ').collect(&:to_i)
arr = Array.new(m) {Array.new}
n.times do
  name, region, mark = readline.split(' ')
  region, mark = region.to_i, mark.to_i
  arr[region - 1].push([mark, name])
end
arr.each do |a|
  a.sort!.reverse!
  if a.length <= 2 || a[2][0] < a[1][0]
    print a[0][1], " ", a[1][1]
    puts
  else
    puts "?"
  end
end
