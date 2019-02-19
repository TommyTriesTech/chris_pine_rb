$nestDepth = 0
$logging = true
$tab = ''


def checkLog
  if $logging
    $nestDepth = $nestDepth + 1
    indent
    puts $nestDepth
  else
    $logging = false
  end
end

def indent
  $nestDepth.times do
     $tab = $tab + '  '
  end
end

def log desc, &block
  puts $tab + 'Logging has begun on ' + desc
  checkLog
  answer = block.call
  puts $tab + 'Logging of ' + desc +  ' finished returning: ' + answer.to_s
  checkLog
end


log 'First String' do
  log 'Another Sum' do
    x = 7+8
    x
  end
    x = 5*5
    x
end
