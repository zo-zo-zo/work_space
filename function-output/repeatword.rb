def repeat_string(str)
  length = str.length
  if length <= 4
  p str * 3
else
    object = str.slice(0..3)
    p object * 3
    #以下にコードを記述する
end
end
repeat_string('Python')
repeat_string('Go')
repeat_string('C++')
