# 以下に線形探索法を行う関数を定義してください
def binary_search(numbers,value)
  head = 0
  tail = numbers.length - 1

  while head <= tail do
    center = ((head + tail)/ 2.0).round

    if (numbers[center] == value)
      return center
    elsif(numbers[center] < value)
      head = center + 1
    else
      tail = center - 1
  end
  end
  return "None"
end

# 「探したい数字」が含まれている配列
numbers = [1, 3, 5, 11, 12, 13, 17, 22, 25, 28]

puts('配列numbersから探したい数字を入力してください')
20
# 探したい数字を入力する
target_number = gets.to_i
# 数字をlinear_searchメソッドで探し、探した結果をputsで出力する
puts(linear_search(numbers, target_number))
