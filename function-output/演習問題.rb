# 変数strを引数として受け取るcount_letterメソッドを定義する
def count_letter(str)
  count = 0
str.split("").each do
  count += 1
end
count
end

# count_letterメソッドを呼び出して、文字列 "abcde" を引数として渡す
p count_letter("abcde")
