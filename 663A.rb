def isok(arr, n, target)
  pos, neg = arr.count{|x| x == "+"}, arr.count{|x| x == '-'}
  max, min = pos * n - neg, pos - neg * n
  #print "##", max, " ", min, " ", target
  #puts ""
  if target <= max && target >= min
    return 0
  elsif target > max
    return -1
  else
    return 1
  end
end

arr = readline.gsub(/[?=]/, "").split(' ')
n = arr.last.to_i
arr = ["+"] + arr[0..-2]

if isok(arr, n, n) == 0
  puts "Possible"
  target = n
  0.upto(arr.length - 1) do |ind|
    ans = 0
    flag = arr[ind] == "+" ? 1 : -1
    if isok(arr[ind + 1..-1], n, target - flag) == 0
      ans = 1
    elsif isok(arr[ind + 1..-1], n, target - n * flag) == 0
      ans = n
    else
      down, up = 1, n
      downf = isok(arr[ind + 1..-1], n, target - flag)
      upf = isok(arr[ind + 1..-1], n, target - n * flag)
      while down + 1 < up
        mid = (down + up) / 2
        res = isok(arr[ind + 1..-1], n, target - mid * flag)
        if res == 0
          ans = mid
          break
        elsif res == downf
          down = mid
        else
          up = mid
        end
      end
    end
    if ind != 0
      print " " + arr[ind] + " "
    end
    print ans
    target -= ans * flag
  end
  print " = "
  puts n
else
  puts "Impossible"
end
