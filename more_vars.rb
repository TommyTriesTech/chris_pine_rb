# Mixing it up#puts is put string and gets is get string!

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

var1 = 2
var2 = '5'

puts var1.to_s + var2
#to_s will convert object to string
puts var1 + var2.to_i
#to_i will convert object to integer


puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number!'.to_i
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Another sentence.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i

puts 20
puts 20.to_s
puts '20'
