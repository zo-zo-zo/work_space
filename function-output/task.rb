def weather
  puts "晴れ"
  puts "曇り"
  puts "雨"
end

weather

def add(n,y)
  sum =n+y
  if sum<50
    return "50より小さい"
  else
    return "50以上です"
end
end
puts add(10,20)
