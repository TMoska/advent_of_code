#!/usr/bin/env ruby
#http://adventofcode.com/2016/day/2

#   1 2 3
#   4 5 6
#   7 8 9

def open_file(input_path)
  path = File.expand_path(input_path, __FILE__)
  return File.read(path)
end

def solve_d2_1(input_path)
  input = open_file(input_path)
  keypad = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  result = 0;
  row = 1
  collumn = 1
  input.split.each do |line|
    line.each_char do |char|
      case char
      when 'U'
        row = (row > 0 ? row - 1 : row)
      when 'R'
        collumn = (collumn < 2 ? collumn + 1 : collumn)
      when 'D'
        row = (row < 2 ? row + 1 : row)
      when 'L'
        collumn = (collumn > 0 ? collumn - 1 : collumn)
      end
    end
    result *= 10
    result += keypad[row][collumn]
    # result += row * 3 + collumn + 1 # works better(can delete keypad var), but less visual
  end
  return (result)
end

#       1
#     2 3 4
#   5 6 7 8 9
#     A B C
#       D

def solve_d2_2(input_path)
  input = open_file(input_path)
  keypad = [[nil, nil, 1], [nil, 2, 3, 4], [5, 6, 7, 8, 9], [nil, 'A', 'B', 'C'], [nil, nil, 'D']]
  result = "";
  row = 2
  collumn = 0
  input.split.each do |line|
    line.each_char do |char|
      case char
      when 'U'
        if (row.between?(1, 4) && !keypad[row - 1][collumn].nil?)
          row -= 1
        end
      when 'R'
        if (collumn.between?(0, 3) && !keypad[row][collumn + 1].nil?)
          collumn += 1
        end
      when 'D'
        if (row.between?(0, 3) && !keypad[row + 1][collumn].nil?)
          row += 1
        end
      when 'L'
        if (collumn.between?(1, 4) && !keypad[row][collumn - 1].nil?)
          collumn -= 1
        end
      end
    end
    result << keypad[row][collumn].to_s
  end
  return (result)
end