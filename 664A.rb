def gcd(a, b)
  if b == 0
    return a
  else
    return gcd(b, a % b)
  end
end

a, b = readline.split(' ').collect(&:to_i)
g = a
a.upto(b) do |num|
  g = gcd(g, num)
  if g == 1
    break
  end
end

puts g
