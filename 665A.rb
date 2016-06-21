a, ta = readline.split(' ').collect(&:to_i)
b, tb = readline.split(' ').collect(&:to_i)
h, m = readline.split(':').collect(&:to_i)
tt = h * 60 + m
at = tt + ta
if at > 23 * 60 + 59
  at = 23 * 60 + 60
end

ct = 0
t = 5 * 60
while t < at
  aat = t + tb
  if t < at && aat > tt
    ct += 1
  end
  t += b
end

puts ct
