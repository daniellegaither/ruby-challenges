def always_three_method(number)
  puts "Always #{(((number+5)*2)-4)/2-number}"
end

puts "Give me a number: "
answer = gets
always_three_method(answer.to_i)
