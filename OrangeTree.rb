class OrangeTree

  def initialize
    @height = 1
    @age = 1
    @orangeCount = 0
  end

  def oneYearPasses
    growth = (1 + rand(100))
    @height = @height + growth
    @age = @age + 1
    puts 'This tree is ' + @height.to_s + ' cm.'
    heightCheck
    checkDeath
  end

  def orangeCheck
    puts 'Your tree has ' + @orangeCount.to_s + ' oranges!'
  end
  def ageCheck
    puts 'Your tree is ' + @age.to_s + ' years old!'
  end

  def pickOrange
    if @orangeCount > 0
      @orangeCount = @orangeCount - 1
    else
      puts 'There are no Oranges to pick!'
    end
  end
  def checkHeight
    puts 'Your tree is ' + @height.to_s + 'cm tall.'
  end
  private

  def heightCheck
    if @height >= 2000
      growChance = (1 + rand(100))
      if growChance % 2 == 0
        growFruit
      else
        puts 'Your tree failed'
      end
    end
  end

    def growFruit
    puts 'Your tree grew an Orange!'
    @orangeCount = @orangeCount + 1
  end

  def checkDeath
    if @height >= 40000
      orangeDie
    elsif @age >= 900
      orangeDie
    end
  end

  def orangeDie
    puts
    puts '--------------GAME OVER--------------'
    puts 'Your Orange Tree has died!'
    puts 'It was ' + @age.to_s + ' years old'
    puts 'and ' + @height.to_s + 'cm tall!'
    puts 'You harvested '+ @orangeCount.to_s + ' oranges from it.'
    exit
  end

end

tree = OrangeTree.new
puts 'How many years would you like to go by?'
yearsPassed = gets.chomp
yearsPassed = yearsPassed.to_i
yearsPassed.times do
  tree.oneYearPasses
end

tree.orangeCheck
tree.pickOrange
tree.checkHeight
tree.orangeCheck
tree.ageCheck
