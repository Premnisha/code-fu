# Print the second highest element within a list of numbers input from the command line
puts "Enter a list of numbers"
element_array = gets
list_array = element_array.split.map(&:to_i)
first_max = -9999999
second_max = -10000000
for element in list_array
  if(element!=first_max && element!=second_max && first_max!=second_max)
    if (element > second_max)
      if(element > first_max)
        second_max = first_max
        first_max = element
      else
        second_max = element
      end
    end
  end
end
if ((second_max!=-9999999) && (second_max!=-10000000))
  puts "Second max #{second_max}"
else
  puts "Second max is nil"
end
