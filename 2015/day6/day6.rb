matrix = Array.new(1000) { Array.new(1000) {|cell| cell = false} }
sum = 0

File.open("input.txt", "r") do |f|
  f.each_line do |line|
    input = line.chomp
    commands = input.split(" ")
    start_x, start_y = commands[1].split(",").map!(&:to_i)
    end_x, end_y = commands[3].split(",").map!(&:to_i)

    for row in start_y..end_y
      for column in start_x..end_x
        case commands[0]
        when 'toggle'
          matrix[row][column] = !matrix[row][column]
        when 'turn_on'
          matrix[row][column] = true
        when 'turn_off'
          matrix[row][column] = false
        end
      end
    end
  end
end
matrix.flatten.each{|x| 
  sum += 1 if x == true
}
puts sum