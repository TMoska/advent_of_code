require 'digest/md5'
guess_Hash = 'iwrupvqb'
looking_for = '00000'
for a in 0..(1.0/0)
  guess = Digest::MD5.hexdigest(guess_Hash+a.to_s)
  puts guess
  if guess.split(//).first(looking_for.length).join == looking_for
    puts 'Advent coin is found in: ' + a.to_s + 'tries. And it is: ' + guess.to_s
    break
  end
end