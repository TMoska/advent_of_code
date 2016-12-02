values = []
input = []
File.open("input.txt", "r") do |f|
  f.each_line do |line|
    input.push(line.chomp.split(" "))
  end
end

initial = input.detect{|a| a.last == 'a'}
case 
require 'pry'; binding.pry
case command_list.length
when 3  # Setting a variable
  values.push({:name => command_list[2], :value => command_list[0].to_i})
when 4  # NOT
  gate, source, dummy, destination = command_list
  hash = {:name => destination}
  values.push(hash.merge!({:value => (~values.detect{|obj| obj[:name] == source}[:value]).to_s(2)}))
when 5
  source1, gate, source2, dummy, destination = command_list
  hash = {:name => destination}
  case gate
  when 'AND'
    values.push(hash.merge!({:value => (values.detect{|obj| obj[:name] == source1}[:value] & values.detect{|obj| obj[:name] == source2}[:value]).to_s(2)}))
  when 'OR'
    values.push(hash.merge!({:value => (values.detect{|obj| obj[:name] == source1}[:value] | values.detect{|obj| obj[:name] == source2}[:value]).to_s(2)}))
  when 'LSHIFT'
    values.push(hash.merge!({:value => (values.detect{|obj| obj[:name] == source1}[:value] << source2.to_i).to_s(2)}))
  when 'RSHIFT'
    values.push(hash.merge!({:value => (values.detect{|obj| obj[:name] == source1}[:value] >> source2.to_i).to_s(2)}))
  end
end
values.each{|obj|
  obj[:value] = obj[:value].to_i(2).to_s(10).to_i unless obj[:value].is_a? Integer
}
puts values