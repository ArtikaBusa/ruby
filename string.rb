string = "hello, how are you?"
puts "#{string}"
puts "Enter index : "
index = gets.chomp.to_i
puts "at #{index} position : #{string[index]}"
