#!/usr/bin/env ruby
#http://adventofcode.com/2016/day/1

def solve_d1(input_path)
  path = File.expand_path(input_path, __FILE__)
  input = File.read(path)

  x = 0
  y = 0
  deg_from_north = 0

  input.split(", ").each do |cmd|
    if (cmd[0] == 'R')
      deg_from_north += 90
    else
      deg_from_north -= 90
    end
    deg_from_north %= 360
    moves = cmd[1..-1].to_i
    case deg_from_north
    when 0
      y += moves
    when 90
      x += moves
    when 180
      y -= moves
    when 270
      x -= moves
    end
  end

  return (x.abs + y.abs)
end
