array = [11,4,5,3,21,7,9,6]
length=array.count
even_sum=0
odd_sum=0
for i in 0..length-1
  if array[i] % 2 == 0
    even_sum += array[i]
  else
    odd_sum += array[i]
  end
end
puts "#{array}"
puts "sum of even number is : #{even_sum}"
puts "sum of odd number is : #{odd_sum}"
