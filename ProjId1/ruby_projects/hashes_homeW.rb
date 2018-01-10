
cities_telscode = {
    "mos" => "+7",
    "spb" => "+3",
    "kiev" => "+5",
    "lvov" => "+8",
    "omsk" => "+9",
}

def add_new_city_code_pare(cities_telscode)
  puts "Enter new city name: "
  new_city_name = gets.chomp
  puts "Enter code of this city: "
  new_city_code = gets.chomp
  cities_telscode[new_city_name] = new_city_code
end

def display_some_city_code(cities_telscode)
  puts "Code of what city do you want to get?:"
  cities_telscode.each {|k,v| print "#{k}, "}
  puts ""
  city_key = gets.chomp
  if (cities_telscode.include?(city_key))
    puts "Code of the #{city_key.to_s.upcase} is: #{cities_telscode[city_key]}"
  elsif
    puts "No such city"
  end
end

def display_all_city_code_pares(cities_telscode)
  cities_telscode.each {|k,v| puts "#{k} => #{v}"}
  end

def display_all_city_names(cities_telscode)
  puts "All cities: "
  cities_telscode.each {|k,v| print "#{k}, "}
  puts ""
end

def iterate_with_user(cities_telscode)
  puts "\nChoose what to do:
  0) Display all city code pares
  1) Display some city code
  2) Add new city-code pare
  4) Display all city names"
  # 3) Exit the programm - (not implemented yet)
  what_to_do = gets.chomp.to_i

  if(what_to_do == 1)
    display_some_city_code(cities_telscode)
  elsif (what_to_do == 2)
    add_new_city_code_pare(cities_telscode)
  elsif (what_to_do == 0)
    display_all_city_code_pares(cities_telscode)
  elsif (what_to_do == 4)
    display_all_city_names(cities_telscode)
  else
    puts "Choose between 1 and 2"
  end
end

# doRunThisProg = true
# while(doRunThisProg)

loop do
  puts "Do you want to lookup a city name? (y/n)"
  doLookUp = gets.chomp
  if doLookUp != "y"
    break
  end
  iterate_with_user(cities_telscode)
end
