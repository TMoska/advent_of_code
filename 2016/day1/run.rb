#!/usr/bin/env ruby
#http://adventofcode.com/2016/day/1

def init_variables(input_path)
  path = File.expand_path(input_path, __FILE__)
  @input = File.read(path)
  @x = 0
  @y = 0
  @deg_from_north = 0
end

def set_direction(dir)
    if (dir == 'R')
      @deg_from_north += 90
    else
      @deg_from_north -= 90
    end
    @deg_from_north %= 360
end

def solve_d1_1(input_path)
  init_variables(input_path)
  @input.split(", ").each do |cmd|
    set_direction(cmd[0])
    moves = cmd[1..-1].to_i
    case @deg_from_north
    when 0
      @y += moves
    when 90
      @x += moves
    when 180
      @y -= moves
    when 270
      @x -= moves
    end
  end

  return (@x.abs + @y.abs)
end

def solve_d1_2(input_path)
  init_variables(input_path)
  locations = []
  @input.split(", ").each do |cmd|
    set_direction(cmd[0])
    moves = cmd[1..-1].to_i
    moves.times do
      case @deg_from_north
      when 0
        @y += 1
      when 90
        @x += 1
      when 180
        @y -= 1
      when 270
        @x -= 1
      end
      if (locations.include?([@x, @y]))
        return (@x.abs + @y.abs)
      end
      locations << [@x, @y]
    end
  end
end