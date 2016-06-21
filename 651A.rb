def gao(a, b)
  a, b = b, a if a > b
  if a == 0 || a == 1 && b == 1
    return 0
  else
    return 1 + gao(b - 2, a + 1)
  end
end
a, b = readline.split(' ').collect(&:to_i)
puts gao(a, b)
