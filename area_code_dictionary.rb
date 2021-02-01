dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names_list(somehash)
# Write code here
  somehash.keys
end

# Get area codes from the hash
def get_area_code_list(somehash)
  # Write code here
    somehash.values
  end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
# Write code here
  somehash[key]
end

# Get area code based on given hash and key
def get_city_name(somehash, value)
  # Write code here
  somehash.key(value)
end

def line
  "-" * 60
end
 
# Execution flow
loop do 
# Write your program execution code here
  print "Do you want to look up area code based on a city name or area code? '1' for city name or '2' for area code or press any other key to exit: "
  city_prompt = gets.chomp
  if city_prompt == "1"
    puts get_city_names_list(dial_book)
    puts
    print "Enter a city name from the list above: "
    city_name = gets.chomp.downcase
    if dial_book.include?(city_name)
      puts "The area code for #{city_name} is #{get_area_code(dial_book, city_name)}"
      puts line
    else
      puts "Invalid city name"
      puts line
    end

  elsif city_prompt == "2"
    puts get_area_code_list(dial_book)
    puts
    print "Enter an area code from the list above: "
    city_code = gets.chomp
    if dial_book.values.include?(city_code)
      puts "The city name with area code #{city_code} is #{get_city_name(dial_book, city_code)}"
      puts line
    else
      puts "Invalid area code"
      puts line
    end

  else
    puts "Goodbye"
    break
  end
end
 