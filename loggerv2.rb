$nestDepth = 0
$logging = true
$tab = ''
#call for a description(desc) and what to do(block)
def log desc, &block
  #Check to see if logging
  checkLog
  #store current tab value - this is to stop your exiting tab from indenting more
  iTab = $tab
  puts iTab + 'Logging has begun on ' + desc
  answer = block.call
  puts iTab + '...Logging of ' + desc +  ' finished returning: ' + answer.to_s
end

def checkLog
  if $logging
    $nestDepth = $nestDepth + 1
    indent
  else
    $logging = false
  end
end

def indent
  $nestDepth.times do
     $tab = $tab + '  '
  end
end






log 'First String' do
  log 'Another Sum' do
    log 'Third Sum' do
      log 'Final Sum' do
        x = 6676*453
        x
      end
      x = 5*430
      x
    end
    x = 7+8
    x
  end
    x = 5*5
    x
end
