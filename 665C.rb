arr = readline.strip.each_char.to_a
1.upto(arr.length - 1) do |ind|
  if arr[ind] == arr[ind - 1]
    arr[ind] = 'd'
    if arr[ind] == arr[ind - 1] ||
        (ind < arr.length - 1 && arr[ind] == arr[ind + 1])
      arr[ind] = 'q'
    end
    if arr[ind] == arr[ind - 1] ||
        (ind < arr.length - 1 && arr[ind] == arr[ind + 1])
      arr[ind] = 'c'
    end
  end
end
puts arr.join
