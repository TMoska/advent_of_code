tot_chars = 0
string_chars = 0
File.open("input.txt", "r") do |f|
  f.each_line do |line|
      input = line.chomp
      require 'pry';binding.pry
      tot_chars += (input.length)
      string_chars += input.scrub.size
  end
end

puts tot_chars-string_chars