time = Time.new
time2 = Time.new + 90

puts time
puts time2

myDoB = Time.mktime(1997, 1, 9, 5, 15)

timeAlive = time - myDoB
bil = 1000000000
puts bil - timeAlive

def yourBday
  time = Time.new
  puts 'What year was you born in? (YYYY)'
  year = gets.chomp
  puts 'What month was you born in? (MM)'
  month = gets.chomp
  puts 'What day was you born on? (DD)'
  day = gets.chomp
  birthDate = Time.mktime(year, month, day)

  puts birthDate
  age = time.year - birthDate.year
  if time.month < birthDate.month
    age = age - 1
  elsif time.month == birthDate.month
    if time.day < birthDate.day
      age = age - 1
    end
  end

  puts 'You are ' + age.to_s + ' years old!'

  age.times do
    puts 'SPANK!'
  end
end

yourBday
