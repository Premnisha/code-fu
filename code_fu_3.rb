# Print the last index where you are able to form "AUTOBOT", given a string as input.
# The letters making up ‘AUTOBOT’ need not be in order, index starts with 0
sample_string = 'AUTOBOT'
puts "Enter the input"
last_index = -1
input_string = gets
input_string = input_string.split("")
sample_string = sample_string.split("")
for i in 0..(input_string.length)-1
  input_string_index = -1
  for j in 0..(sample_string.length)-1
    if (input_string[i] == sample_string[j])
      input_string_index = i
      last_index = input_string_index
    end
  end
end
puts "last index #{last_index}"
