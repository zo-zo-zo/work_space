# まずは配列の定義
blog_titles = []
blog_contents = []

while true
  puts "タイトルを入力"
  blog_title = gets

  puts "本文を入力"
  blog_content = gets

  puts "入力した値"
  puts "Title  : #{blog_title}"
  puts "Content: #{blog_content}"

  # 入力した値を、それぞれ配列に加える
  blog_titles << blog_title
  blog_contents << blog_content

  # 配列の内容の表示
  puts "配列"
  puts "Title  : #{blog_titles}"
  puts "Content: #{blog_contents}"
end
