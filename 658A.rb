def cal(p, t, c)
  sum, sumt = 0, 0
  p.zip(t).each do |pp, tt|
    sumt += tt * c
    if pp > sumt
      sum += (pp - sumt)
    end
  end
  return sum
end

n, c = readline.split(' ').collect(&:to_i)
p = readline.split(' ').collect(&:to_i)
t = readline.split(' ').collect(&:to_i)
diff = cal(p, t, c) - cal(p.reverse, t.reverse, c)
if diff > 0
  puts "Limak"
elsif diff < 0
  puts "Radewoosh"
else
  puts "Tie"
end
