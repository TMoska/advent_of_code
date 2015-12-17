sum = 0
File.open("input.txt", "r"){|f|
  entered_basement = false
  input.each_char.with_index(1) do |character, index|
    character == '(' ? sum += 1 : sum -= 1
    if sum <0 && !entered_basement
      entered_basement = true
      puts 'Entered basement at: '+index.to_s
    end
  end
  puts 'Final floor is: '+sum.to_s
}