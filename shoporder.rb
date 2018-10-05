class Shoporder
  def initialize
    @order = {
          "2018" => {
            "01" => {
              "05" => [100, 200,300],
            },
            "02" => {
              "10" => [200]
            },
            "03" => {
              "15" => [200]
            },
            "04"=>{
              "20" => [500,600]
            }
          }
        }
  end

  def create_order
    puts "Enter a date and amount"
    year, month, date, amount = gets.chomp.split(/[\-\s]/)
    if @order[year].nil?
      @order[year] = {}
    end
    if @order[year][month].nil?
      @order[year][month] = {}
    end
    if @order[year][month][date].nil?
      @order[year][month][date] = []
    end
    @order[year][month][date] << amount.to_i
  end

  def day_detail
    amount = Array.new
    puts "Enter a date"
    year, month, date = gets.chomp.split("-")
    if @order[year] && @order[year][month] && @order[year][month][date]
      amount = @order[year][month][date]
    end
    display_detail(amount)
  end

  def month_detail
    amount = Array.new
    puts "Enter a month and year"
    year, month = gets.chomp.split("-")
    if @order[year] && @order[year][month]
      amount = @order[year][month].values
    end
    amount = amount.flatten
    display_detail(amount)
  end

  def display_detail(amount)
    puts ""
    puts "Total Order : #{amount.count}"
    puts "Total Amount : #{amount.sum}"
    puts "Minimum order : #{amount.count > 0 ? amount.min : 0}"
    puts "Maximum order : #{amount.count > 0 ? amount.max : 0}"
    puts "Average order : #{amount.count > 0 ? amount.sum / amount.count : 0}"
    puts ""
  end

  def start_program
    loop do
      puts "======================"
      puts "Welcome to my shop"
      puts "======================"
      puts ""
      puts "1 Create new order"
      puts "2 Print day Details"
      puts "3 Print month Details"
      puts ""
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
    end
  end
end

obj = Shoporder.new
obj.start_program
