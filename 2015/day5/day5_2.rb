nice_string_count = 0
letter_pairs = []
repeated_letter, double_letter = false
File.open("input.txt", "r") do |f|
  f.each_line do |line|
    input = line.chomp
    for a in 0..(input.length-1)
      repeated_letter = true if input[a] == input[a+2]
      double_letter = true unless input.index(input[a,2],a+2).nil?
    end
    
    nice_string_count += 1 if repeated_letter && double_letter
      
    letter_pairs = []
    repeated_letter, double_letter = false
  end
end
puts 'Total nice string count is: ' + nice_string_count.to_s