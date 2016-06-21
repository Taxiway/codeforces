n, a, b = readline.split(' ').collect(&:to_i)
if a * b < n
  puts "-1"
else
  x, y = 1, 2
  1.upto(a) do |row|
    1.upto(b) do |col|
      if col != 1
        print " "
      end
      if ((row + col) & 1) == 0
        if (x <= n)
          print x
          x += 2
        else
          print "0"
        end
      else
        if (y <= n)
          print y
          y += 2
        else
          print "0"
        end
      end
    end
    puts ""
  end
end
