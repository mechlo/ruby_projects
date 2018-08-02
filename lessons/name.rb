class Name

  attr_reader :title, :first_name, :middle_name, :last_name
  attr_writer :title
  attr_accessor :title, :first_name, :middle_name, :last_name

  def initialize(title, first_name, middle_name, last_name)
    @title = title
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    first_and_middle_name = @first_name + " " + @middle_name
    first_and_middle_name + ' ' + @last_name
    #@first_name + " " + @middle_name + " " + @last_name
  end

  def full_name_title
    @title + " " + full_name()
  end


end

name = Name.new("Mr.", "Matthew", "Sean", "Hunter")
puts name.title + name.full_name
vera = Name.new("Ms.", "Vera", "Jean", "Hunter")
puts vera.full_name_title

puts name.title +
     name.first_name +
     name.middle_name +
     name.last_name


def title=(new_title)
  @title = new_title
end

puts "Title: #{name.title}"
name.title = "Dr."
puts "Title: #{name.title}"

