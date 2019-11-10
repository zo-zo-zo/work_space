# 以下に選択ソートを行う関数を定義してください

def selection_sort(numbers)
  i = 0
  while i < (numbers.length) -1 do
    indexMin = i
    k = i + 1
    while k < (numbers.length) do
      if numbers[k] < numbers[indexMin]
        indexMin = k
    end
    k += 1
  end
  numbers[indexMin], numbers[i]=numbers[i],numbers[indexMin]
  i += 1
end
  p(numbers)# この部分を記述してください
end

selection_sort([12, 13, 11, 14, 10])
