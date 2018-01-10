require_relative 'user'

class Admin < User
  def run
    puts "I'm run inside the admin class"
  end

  def self.identify_yourself
    puts "I'm a Admin class"
  end
end