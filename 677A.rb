n, h = readline.split(' ').collect(&:to_i)
arr = readline.split(' ').collect(&:to_i)
puts arr.map{|num| num > h ? 2 : 1}.inject(0, :+)
