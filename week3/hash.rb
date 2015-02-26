my_hash = {
  corned_beef: ["corned beef", "potatoes"],
  breakfast: ["sausage", "onions", "eggs", "potatoes"],
  smoked_salmon: ["smoked salmon", "onions", "sour cream", "potatoes"]
}

puts "Breakfast hash contains:"
my_hash[:breakfast].each do |item|
  puts item
end
