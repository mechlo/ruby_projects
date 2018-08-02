class Monster
  attr_reader :name, :actions
  def initialize(name)
    @name = name
    @actions = {
      screams: 0,
      scares: 0,
      run: 0,
      hide: 0
    }
  end

  def say(&block)
    print "#{name} says..."
    yield
  end

  def scream(&block)
    actions[:screams] += 1
    print "#{name} screams "
    yield
  end

  def scare(&block)
    actions[:scares] += 1
    puts "the monster has scared you"
    yield
  end

  def run
    actions[:run] += 1
    puts "#{name} runs"
    yield
  end

  def hide
    actions[:hide] += 1
    puts "#{name} hides"
    yield self if block_given?
  end

  def score_board
    puts "-----------------------"
    puts "#{name}'s Score Board"
    puts "-----------------------"
    puts "Screams: #{actions[:screams]}"
    puts "Scares: #{actions[:scares]}"
    puts "Runs: #{actions[:run]}"
    puts "Hides: #{actions[:hide]}"
    puts "-----------------------"
  end

  def inspect
    "<#{name}:, #{actions}:>"
  end

end

monster = Monster.new("fluffy")
monster.say {puts "welcome to my home"}

monster.scream do
  puts "BOO!"
end

monster.scare do
  puts "Go away!"
end
monster.run do
  "Going to get you!"
end

monster.hide do |m|
  "Hides!"
  print m.inspect
end
puts "\n"
monster.score_board



