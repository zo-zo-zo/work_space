# 以下にバブルソートを行う関数を定義してください
def bubble_sort(numbers)
  for i in 0..((numbers.length)-1)
    p(numbers)
    for j in 1..((numbers.length)-i-1)
      if numbers[j-1] > numbers[j]

        numbers[j-1],numbers[j] = numbers[j],numbers[j-1]
      end
    end
  end
end

bubble_sort([ 50,25, 4, 1])
