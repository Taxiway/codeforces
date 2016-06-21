n = readline.to_i
str = readline.strip.each_char.to_a
n = str.length
m = str.uniq.length
if n > 26
  puts -1
else
  puts n - m
end

