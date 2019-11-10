def letter(str)
array_str = []
strs = str.split("")
strs.each do|s|

if s == s.upcase
array_str << s.downcase
else
array_str << s.upcase
end
end
p array_str.join
end

  puts letter("ABcd")
  puts letter("EEEE")
  puts letter("ffff")
