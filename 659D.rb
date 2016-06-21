def danger(x, y, xx, yy, xxx, yyy)
  dx, dy, ddx, ddy = xx - x, yy - y, xxx - xx, yyy - yy
  return ddx * dy - ddy * dx < 0
end

n = readline.to_i
x, y = readline.split(' ').collect(&:to_i)
xx, yy = readline.split(' ').collect(&:to_i)
ret = 0
(n - 1).times do
  xxx, yyy = readline.split(' ').collect(&:to_i)
  ret += 1 if danger(x, y, xx, yy, xxx, yyy)
  x, y, xx, yy = xx, yy, xxx, yyy
end

puts ret
