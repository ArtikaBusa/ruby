puts "Enter the name of directory where files exist : "
directory = gets.chomp
csv_files = Dir.glob("#{directory}/*.*")
puts csv_files
puts ""
current_directory=Dir.pwd
home_directory=Dir.home
puts "current_directory => #{current_directory}"
puts ""
puts "home_directory => #{home_directory}"
