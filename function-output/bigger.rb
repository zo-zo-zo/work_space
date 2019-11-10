# a = 1
# b = 2
#
# if a > b
#   puts(a)
# else
#   puts(b)
# end

# def bigger(a, b)
#   if a > b
#     return a
#   else
#     return b
#   end
# end
#
# a = 1
# b = 2
#
# puts(bigger(a, b))

def bigger(a, b)
  if a > b
    return a
  else
    return b
  end
end

def biggest(a, b, c)
  bigger_one = bigger(a,b)
  if bigger_one == a
    return biggest = bigger(a,c)
  elsif bigger_one == b
    return biggest = bigger(b,c)
  end
  return biggest
   # 最大値を返却する処理を記述する
end

def median(a, b, c)
    # 最大値を代入する
    biggest_number = biggest(a,b,c)
    # 最小値をみつけ、最小値でなかった方を返却する
    if biggest_number == a
       return median_number = bigger(b,c)
    elsif biggest_number == b
       return median_number = bigger(a,c)
    elsif biggest_number == c
       return median_number = bigger(a,b)
     end
     return median_number
    end

puts(median(5,7,2))
puts(median(7,3,2))
puts(median(1,4,2))
