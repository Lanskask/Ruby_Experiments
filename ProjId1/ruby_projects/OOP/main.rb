require_relative 'user'
require_relative 'admin'

user4 = User.new("Us1", "us1email@email.com")
user4.destroy("S Obj S Obj")

puts "----"
User.identify_yourself
Admin.identify_yourself

user1 = User.new("Jody", "Jody@m.c")
user2 = User.new("Bruno", "Bruno@m.c")
user3 = User.new("Mardy", "Mardy@m.c")

user1.run
user2.run
user3.run

# puts User.ancestors
puts "----"
puts user1.get_name
user1.set_name("New Jody 1")
user1.set_name = "New Jody 2"
puts user1.get_name
puts user1.name

puts "----"
puts user1.email
user1.email = "new this email"
puts user1.email