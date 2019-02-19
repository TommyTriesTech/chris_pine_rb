#Understanding arrays/lists
names = ['Tom', 'Callum', 'Ollie', 'Ellis']
puts names[0]
puts names[3]
puts names[1]
puts names[2]

languages = ['English', 'German', 'Ruby']

languages.each do |lang|
  puts 'I love ' + lang + '!'
  puts 'Don\'t you?'
end

puts 'And let\s hear it for C++!'
puts '...'

3.times do
  puts "Woo Hoo!"
end

foods = ['artichoke', 'brioche', 'caramel', ['orange', 'black', 'blue']]
puts foods
puts
puts foods.to_s
puts foods.join('! ')
puts
puts foods.join('  :)  ') + '  8)'

200.times do
  puts []
end

favourites = []
favourites.push 'raindrops on roses'
favourites.push 'whiskey on kittens'
favourites.push 'blue violets'

puts favourites[0]
puts favourites.last
puts favourites.length
puts favourites.pop
puts favourites
puts favourites.length

words = []

words.push gets.chomp while words.last != ''

words.pop

begin
  swapped = false #set state of the loop
  1.upto(words.length - 1) do |word| #repeat this loop for as long as the array is
    if words[word-1] > words[word] #if word present is alphabetically lower...
      words[word-1], words[word] = words[word], words[word-1] #flip the order of the words
      swapped = true
    end
    puts 'BREAK LOOP'
  end
  puts 'No2'
end until not swapped

puts words
