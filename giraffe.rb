#name = "Peru"
#age = 23
#weight = 23.43
#istall = false
#isman = true
#flaws = nil

#name = "Giraffe Academy"
#puts name.upcase()
#puts name.downcase()
#puts name.strip() # like trim
#puts name.length()
#puts name.include? "Giraffe"
#puts name[2] # Give us the position and its value.
#puts name[0, 3] # Give us the position of a range of numbers
#puts name.index("G")

#num = 20
#puts ("My favorite number " + num)
#puts ("My favorite number " + num.to_s) # turn number into string
#puts num.abs() # get the absolute value
#puts num.round() # num = 20.343
#puts num.ceil() # num = 20.1  / result = 21
#puts (num / 6.7).ceil()
#puts num.floor() # num = 20.9 / result = 20
#puts (num / 6.7).floor()
#puts 6**2 # 6^2

# 10. Getting user input
#puts "Enter your name: "
#name = gets.chomp()
#puts "Enter your age: "
#age = gets.chomp()
#puts ("Hello " + name + " ,you are " + age)

# Building a calculator
#puts "Enter the operation Math : "
#operation = gets.chomp()
#puts "Enter number 1 : "
#num1 = gets.chomp().to_f
#puts "Enter number 2 : "
#num2 = gets.chomp().to_f

#if operation == "+"
#  puts num1 + num2
#elsif operation == "-"
#    puts num1 - num2
#  elsif operation == "*"
#    puts num1 * num2
#  elsif operation == "/"
#    puts num1 / num2
#  else puts "Incorrect operation sign"
#end

#Arrays
#friends = Array[2, "Karen", 3.4, false]
#friends[0] = 5
#puts friends[0]
#puts friends[-2]
#puts friends.length()

#HashMap
#countries = {
#  :Peru => "PE",
#  "Colombia" => "CO",
#  1 => "MX"
#}

#puts countries[:Peru]
#puts countries["Colombia"]
#puts countries[1]

#Methods
def sayhi
  puts "Hello Luigi, You are 23"
end
#sayhi
def sayhi(name, age)
  puts ("Hello " + name + ", You are " + age.to_s)
end
#sayhi("Luigi", 24)
def sayhi(name = "no name", age = -1)
  puts ("Hello " + name + ", You are " + age.to_s)
end
#sayhi


#Return Statement
def say_hi(username)
  return "Hello World " + username
end

# puts say_hi("Luigi")



# Case expressions.
def get_day_name(day)
  day_name = ""
  case day
  when "mon"
    day_name = "Monday"
  when "tue"
    day_name = "Tuesday"
  when "wed"
    day_name = "Wednesday"
  when "thu"
    day_name = "Thursday"
  when "fri"
    day_name = "Friday"
  when "sat"
    day_name = "Saturday"
  when "sun"
    day_name = "Sunday"
  else
    day_name = "Invalid abbreviation"
  end
  return day_name
end

#puts get_day_name("sat")
#puts get_day_name("X")


# While Loops
#number = 1
#while number > 0 && number < 2
#  puts number
#  number += 1
#end

friends = ["Lima", "Arequipa", "Cuzco", "Cajamarca", "Ica"]
#puts friends


# Loops
#for friend in friends
#  puts friend
#end

#friends.each do |friend|
#  puts friend
#end

#for index in 0..5
#  puts index
#end

#6.times do |index|
#  puts index
#end

=begin
# Exponent Methods
def pow(base_num, pow_num)
  result = 1
  pow_num.times do
    result = result * base_num
  end
  return result
end

puts pow(5,2)
=end

=begin
File.open("employees.txt", "r") do |file|
=begin
  file.each do |data|
    puts data.chomp()
  end
=end
=begin
  for line in file.readlines()
    puts line
  end

end
=end

File.open("employees.txt", "a") do |file|
      file.write("\nOscar, Counter")
      puts "Information has been added"
end
