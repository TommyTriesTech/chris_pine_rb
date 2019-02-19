#puts is put string and gets is get string!

puts gets
puts "Hello there, what\'s your name?"
#chomp removes any enters from your string
name = gets.chomp
puts "Your name is " + name + "? What a lovely name."
puts "Pleased to meet you, " + name + ". :)"

puts "Hello! What is your first name?"
firstName = gets.chomp
puts "What\'s your middle name?"
middleName = gets.chomp
puts "And your last name?"
lastName = gets.chomp

puts "Hello, " + firstName + " " + middleName + " " + lastName


puts "What's your favourite number?"
number = gets.chomp
puts "Here is your number plus one!"
puts number.to_i + 1

puts "You must have a better number than that?!"
number = gets.chomp
puts "Here is your number multiplied by 365!"
puts number.to_i * 365
