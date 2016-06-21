def gao(a, b, c)
  if c == 0
    return a == b
  elsif c > 0
    return b >= a && (b - a) % c == 0
  else
    return b <= a && (b - a) % c == 0
  end
end

a, b, c = readline.split(' ').collect(&:to_i)
puts gao(a, b, c) ? "YES" : "NO"
