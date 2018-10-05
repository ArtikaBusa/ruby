puts "Enter string : "
string = gets.chomp
puts ""
letter = string.count("a-z")
puts "letter is : #{letter}"
digit = string.count("0-9")
puts "Digit is : #{digit}"
space = string.count(" ")
puts "space is : #{space}"
other = string.count(",/$@")
puts "other : #{other}"
