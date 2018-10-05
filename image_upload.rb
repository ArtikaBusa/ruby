class Image
  def initialize
    puts "Enter dimension of image : "
    @dimension = gets.chomp.to_i
    if @dimension > 10000
      puts "Enter a dimension between 0 < dimension < 10000"
    else
      puts "Enter number of image : "
      @number_of_image = gets.chomp.to_i
      if @number_of_image > 100
        puts "Enter a number of image between 0 < number_of_image < 100"
      end
    end
    height_width
  end

  def height_width
    @image = []
    for i in 0..@number_of_image-1
      if i < @number_of_image
        height_width = gets.chomp
        height, width = height_width.split(" ").map(&:to_i)
        @image << [height,width]
        @image.each do |i|
          if i[0] > 10000 || i[1] > 10000
            puts "Enter a height_width between 0 < height_width < 10000"
            exit
          end
        end
      end
    end
  end

  def image_validation
    @image.each do |i|
      if @dimension > i[0] || @dimension > i[1]
        puts "Image not valid"
      elsif i[0] == i[1]
        puts "Perfect"
      elsif @dimension < i[0] || @dimension < i[1] || i[0] != i[1]
        puts "Crop and Accept"
      end
    end
  end
end
obj = Image.new
obj.image_validation
