vowels = ['a', 'e', 'i', 'o', 'u']
avoid_strings = ['ab', 'cd', 'pq', 'xy']
avoids_strings = true
nice_string_count = 0
vowel_count = 0

File.open("input.txt", "r") do |f|
  f.each_line do |line|
    input = line.chomp

    for a in 0..(input.length-1)
      vowel_count += 1 if vowels.include?(input[a])
      double_letter = true if input[a]==input[a+1]
      avoids_strings = false if avoid_strings.include?(input[a,2])
    end
    three_vowels = vowel_count>=3

    nice_string_count += 1 if three_vowels && double_letter & avoids_strings

    vowel_count = 0
    three_vowels = false
    double_letter = false
    avoids_strings = true
  end
end

puts 'Total nice string count is: ' + nice_string_count.to_s