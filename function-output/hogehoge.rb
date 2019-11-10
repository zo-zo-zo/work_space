# def hoge
for number in 1..40 do
  if number%3 == 0 ||number.to_s.include?("3")
    p "hoge"
  else
    p "#{number}"
end
end
# end
# puts hoge(1..40)
