def average(first_number,second_number,third_number)
  @avg=(first_number+second_number+third_number)/3
  puts "average is #{@avg}"
end
puts "Enter first number  : "
first_number = gets.chomp.to_i
puts "Enter second number  : "
second_number = gets.chomp.to_i
puts "Enter third number  : "
third_number = gets.chomp.to_i
average(first_number,second_number,third_number)
