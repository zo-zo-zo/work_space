blog_titles = []
blog_contents = []

while true

puts'以下より行う操作を選んでください'
puts'1:ブログを作成する'
puts'2:作成されたブログを見る'
puts'3:ブログアプリを終了する'



number = gets.to_i

if number == 1
  blog = {}
  puts "1:ブログを作成する"

  puts "ブログのタイトルを入力してください"
  blog[:title] = gets
blog_titles << blog_title
  puts "ブログの本文を入力してください"
  blog[:content] = gets
blogs << blog
  puts "入力されたタイトルと本文は以下です。"

  puts "タイトル：#{blog[:title]}"
  puts "本文：#{blog[:content]}"
elsif number == 2
  puts "2:作成されたブログを見る"
  blogs.each do |blog|
  puts "タイトル：#{blog[:title]}" #追記する
  puts "本文：#{blog[:content]}" #追記する
  puts"--------"
end
elsif number == 3
  puts "3:ブログアプリを終了する"
  break
else
  puts "1~3の数字を入力してください"
end
end
