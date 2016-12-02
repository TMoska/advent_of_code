# http://adventofcode.com/day/3

def move obj, vertical, positive
  if vertical
    return [obj[0], positive ? obj[1]+1 : obj[1]-1]
  else
    return [positive ? obj[0]+1 : obj[0]-1, obj[1]]
  end
end

santa_position = robot_position = [0, 0]
santa_unique_positions = robot_unique_positions = [[0,0]]
File.open("input.txt", "r") { |f|
  f.each_char.with_index(1) { |char, index|
    if index.odd?
      santa_position =  case char
                        when '^'
                          move(santa_position, true, true)
                        when 'v'
                          move(santa_position, true, false)
                        when '<'
                          move(santa_position, false, false)
                        when '>'
                          move(santa_position, false, true)
                        end
      santa_unique_positions.push(santa_position) if santa_unique_positions.detect{ |e| e==santa_position }.nil?
    else
      robot_position =  case char
                        when '^'
                          move(robot_position, true, true)
                        when 'v'
                          move(robot_position, true, false)
                        when '<'
                          move(robot_position, false, false)
                        when '>'
                          move(robot_position, false, true)
                        end
      robot_unique_positions.push(robot_position) if robot_unique_positions.detect{ |e| e==robot_position }.nil?
    end
  }
}
puts 'Number of presents delivered: ' + ((robot_unique_positions+santa_unique_positions).uniq.length).to_s