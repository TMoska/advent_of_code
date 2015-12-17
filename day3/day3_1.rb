position = [0,0]
unique_positions = [[0,0]]
File.open("input.txt", "r") do |f|
  f.each_char do |char|
    position =  case char
                when '^'
                  [position.first,position.last+1]
                when 'v'
                  [position.first,position.last-1]
                when '<'
                  [position.first+1,position.last]
                when '>'
                  [position.first-1,position.last]
                end
    unique_positions.push(position) if unique_positions.detect{ |e| e==position }.nil?
  end
end

puts 'Number of presents delivered: ' + unique_positions.length.to_s