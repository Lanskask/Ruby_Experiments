require 'json'

class User
  attr_accessor :name, :email, :permissions
  def initialize(*args)
    # @name = name
    # @email = email
    # @permissions = permissions
    @name = args[0]
    @email = args[1]
    @permissions = User.permissions_from_template
  end

  def self.permissions_from_template
    file_name = 'user_permissions_template.json'
    file = File.read file_name
    # JSON.parse(file, nil, symbolize_names: true)
    JSON.load(file, nil, symbolize_names: true)
  end

  def save
    self_json = {
        email: @email, name: @name, permissions: @permissions
    }.to_json
    open("users.json", 'a') do |file|
      file.puts self_json
    end
  end

end