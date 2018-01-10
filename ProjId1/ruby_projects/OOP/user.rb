require_relative 'destractable'

class User
  include Destractable
  attr_accessor :name, :email # add basic setter getter methods for name - :name
  def initialize(name, email)
    @name = name
    @email = email
  end

  def run
    puts "Hey, I'm #{@name}"
  end

  def get_name
    @name
  end

  def set_name=(name)
    @name = name
    end

  def set_name(name)
    @name = name
  end

  def self.identify_yourself
    puts "I'm a User class"
  end
end
