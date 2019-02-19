#Create a method that makes a chime for each hour that has gone by, use a proc

#the name of this method/function with the &parameter in order to define a function when calling for the function
def clockChime &chime
  #use the time method to grab the current time to find out how many hours haave gone by
  time = Time.now
  hour = time.hour
  ampm = 'am'
  #if it is past the 12th hour, it is in the afternoon and adjust the am/pm toggle and output of the hour
  if hour >= 12
    hour = hour - 12
    ampm = 'pm'
  end
  #use the original time class to get the current amount of hours gone by and define what function to spit out inside the clockChime function
  time.hour.times do
    chime.call
  end
  puts 'It is ' + hour.to_s + ampm
end

##final code that works

clockChime do
  puts 'DING DONG'
end
