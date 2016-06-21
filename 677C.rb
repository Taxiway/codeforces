 def gao(ch)
  case ch
  when '0'..'9'
    return ch.ord - '0'.ord
  when 'A'..'Z'
    return ch.ord - 'A'.ord + 10
  when 'a'..'z'
    return ch.ord - 'a'.ord + 36
  when '-'
    return 62
  when '_'
    return 63
  end
end

def cal(num)
#  puts num
  ret = 0
  6.times do
    ret += 1 if (num % 2) == 0
    num >>= 1
  end
#  puts ret
  ret
end

str = readline.strip
sum = str.each_char.map{|num| gao(num)}.map{|num| cal(num)}.inject(0, :+)
mod = 1000000007
res = 1
sum.times {res = (res * 3) % mod}
puts res
