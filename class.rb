puts "======================"
puts "Welcome to my shop"
puts "======================"
$new_detail = Array.new
$date = Array.new
$amount = Array.new
$array = Array.new
$hash = Hash.new { |hash, key| hash[key] = [] }
def order
  @order ={"01-02-2018" => [200,100,300] , "02-2018" => [100] , "03-2018" => [200,300]}
end
def create_order
  # hash = Hash.new { |hash, key| hash[key] = [] }
  #
	# raw_data = [ [1, 'a'], [1, 'b'], [1, 'c'],
	#              [2, 'a'], [2, ['b', 'c']],
	#              [3, 'c'] ]
	# raw_data.each { |x,y| hash[x] << y }
	# puts hash
  puts "how many record you want to enter ? "
  @count = gets.chomp.to_i
  for i in 0..@count-1
    puts "Enter a date and amount"
    $new_detail[i] = gets.chomp
  end
  puts "All detail : #{$new_detail}"
  for i in 0..@count-1
    both_value = $new_detail[i].split(" ")
    $date[i] = both_value[0]
    $amount[i]= both_value[1]
  end
  for i in 0..@count-1
    $array[i] = [$date[i],$amount[i].to_i]

  end
  puts "array : #{$array}"
  # str_array = $amount.map(&:to_s)
  # puts "string : #{str_array}"


  $array.each { |x,y| $hash[x] << y }
  puts "hash : #{$hash}"
  # raw_data.each { |x,y| hash[x] << y }
   # puts "0 : #{$date[i-1]}"
   # puts "1 : #{$date[i]}"
  # if $date[i-1] == $date[i]
  #  $amount[i] = $amount[i-1].to_i + $amount[i].to_i
  #  puts $amount
  # end
  # hash=Hash[$date.zip($amount)]
  #   # puts hash
  #   # puts @order
  @order = @order.merge($hash)
  puts "Final hash : #{@order}"
end
def day_detail

  puts "Enter a date : "
  day_date = gets.chomp
  for i in 0..@order.count-1
    if day_date == @order.keys[i]
      @total_order = @order.values[i].count
      @minimum = @order.values[i].min
      @maximum = @order.values[i].max
      @sum = @order.values[i].sum
      @average = @sum / @total_order
      print_detail(day_date,@total_order,@sum,@minimum,@maximum,@average)
    end
  end
end
def month_detail
  puts "Enter a date : "
  day_date = gets.chomp
  for i in 0..@order.count-1
    if day_date == @order.keys[i]
      @total_order = @order.values[i].count
      @minimum = @order.values[i].min
      @maximum = @order.values[i].max
      @sum = @order.values[i].sum
      @average = @sum / @total_order
      print_detail(day_date,@total_order,@sum,@minimum,@maximum,@average)
    end
  end
end
def print_detail(date,order,sum,minimum,maximum,average)
  puts "Detail of date : #{date}"
  puts "Total Order : #{order}"
  puts "Total Amount : #{sum}"
  puts "Minimum order : #{minimum}"
  puts "Maximum order : #{maximum}"
  puts "Average order : #{average}"
end
order

loop do
  puts "1 Create new order"
  puts "2 Print day Details"
  puts "3 Print month Details"
  puts "How may help you?(1,2,3 or quit) "
  choice = gets.chomp
  case choice
  when "1"
    create_order
  when "2"
    day_detail
  when "3"
    month_detail
  when "q","quit"
    exit
  else
    puts "Enter valid choice"
  end
  puts "Do you want to continue yes or no?? "
  answer = gets.chomp
  if answer=="no"
    break
  end
end
