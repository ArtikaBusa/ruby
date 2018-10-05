puts "Enter N1 : "
n1=gets.chomp.to_i
puts "Enter N2 : "
n2=gets.chomp.to_i
count=0
print "Divisible number by 3 is : "
for i in n1..n2
  if i % 3 == 0
    print "#{i} "
    count+=1
  end
end
puts ""
puts "count is : #{count}"
