n, k = readline.split(' ').collect(&:to_i)
a = readline.split(' ').collect(&:to_i)
b = readline.split(' ').collect(&:to_i)
down = 0
up = (b[0] + k) / a[0] + 1
while down + 1 < up
  mid = (down + up) / 2
  need = 0
  a.zip(b).each do |aa, bb|
    if aa * mid > bb
      need += aa * mid - bb
    end
  end
  if need <= k
    down = mid
  else
    up = mid
  end
end
puts down
