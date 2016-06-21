n = readline.to_i - 1
1.upto(1000) do |i|
  s = i.to_s
  if s.length <= n
    n -= s.length
  else
    puts s[n]
    break
  end
end
