total_sum1 = total_sum2 = 0;
File.open("input.txt", "r") do |f|
  f.each_line do |line|
    sizes = line.chomp.split("x")
    l, w, h = sizes.map{|size| size.to_i}
    total_sum1 += (2*l*w+2*w*h+2*h*l+[l*w,w*h,h*l].min)
    total_sum2 += [l,w,h].sort.reverse.last(2).collect{|a| a*2}.inject(:+) + l*w*h
  end
end

puts 'Solution of problem #1: '+total_sum1.to_s
puts 'Solution of problem #2: '+total_sum2.to_s