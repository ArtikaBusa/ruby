array = [12,2,3,4,1,3,2]
puts "first array is : #{array}"
array2 = [23,2,1,5,4,12,0]
puts "second array is : #{array2}"

puts ""

reverse_array = array.reverse
puts "Reverse : #{array} => #{reverse_array}"

puts ""

print "similar integer number is "
for i in array
  for j in array2
    if i==j
      print "#{i} "
    end
  end
end

puts ""
puts ""
sort_array = array.sort
puts "sorting of interger : #{array} => #{sort_array}"

puts ""

array3 = ["abc","mnb","ssd","eds"]
sort_array3 = array3.sort
puts "sorting of string : #{array3} => #{sort_array3}"
