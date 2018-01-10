require 'pp'
require_relative 'user'

user = User.new 'John Doe', "John Doe@email.com"

pp user

user.save