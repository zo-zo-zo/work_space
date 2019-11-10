# puts "文字列なのか？"
# puts "mojiretsunanoka?"
# puts 20
# puts "40"
# puts '文字列なのか？'
# puts "文字列なのか？'
# puts (文字列なのか？)
# puts /文字列なのか？/
# puts :文字列なのか？
# 1,2,4,5,が文字列。10は一見文字列だがシンボルで内部的には整数

# puts "DIVE INTO CODE"
# puts "私は受験生です"
# puts "30歳です"
# def introduce(age)
#   puts "#{age}歳です"
# end
# introduce(30)

# puts 5 [+] 5 == 10
# puts 8 [-] 3 == 5
# puts 5 [*] 5 == 25
# puts 40 [/] 5 == 8
# puts 28 [%] 6 ==  4

# puts 10 [<] 8 == false
# puts 30 [>] 25 == true
# puts 15 [ == ] 15 == true(等しいのみを表す記号)
# puts 20 [>] 30 == false
# puts 8 [<] 10 == true


# name = "山田太郎"
# age  = 18
# puts name
# puts age
#
# puts "私の名前は#{name}です。年齢は#{age}です"

# season = ["春","夏","秋"]
# puts season
# season << "冬"
# puts season
#
# puts season[2]

# house = {price:"2000万",location:"東京都",size:"100坪"}
#
# puts house[:location]
#
# p house[:location]

house = [{price:"2000万",location: "東京都",size:"80坪"},{price:"1500万",location:"千葉県",size:"50坪"},{price:"800万",location:"埼玉県",size:"100坪"}]

p house [1][:location]
p house [0][:size]
p house [2][:price,:size]❌
p house [2][:price],house[2][:size]
