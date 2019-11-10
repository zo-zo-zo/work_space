i = []
(1...30).each　do|i|

if i%3 == 0
  return Fizz
elsif i%5 == 0
  return Buzz
elsif i%15 == 0
  return FizzBuzz
else
  return i
end
