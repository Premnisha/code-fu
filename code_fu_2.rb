# Prints neighbors of an element in a 3x3 integer matrix
# Sample inputs - 2 3 4 5 6 7 8 9 1

# Input dimension
puts "Enter the matrix dimension"
n = gets
n = n.to_i

# Input matrix
puts "Enter a list of numbers for matrix"
element_array = Array.new(n){Array.new(n)}
for i in 0..n-1
  for j in 0..n-1
    element_array[i][j]=gets
  end
end

# Input element
puts "Enter element"
element = gets
index1, index2 = 0

# Find index of the element
for i in 0..n-1
  for j in 0..n-1
    if(element_array[i][j]==element)
      index1=i
      index2=j
    end
  end
end

index1=index1.to_i
index2=index2.to_i

# Print neighbors
puts "Neighbors of the element"
for i in 0..n-1
  for j in 0..n-1
    if(((index1-1>=0)&&(i==index1-1))||((index1+1<=n-1)&&(i==index1+1))||(i==index1))
      if(((index2-1>=0)&&(j==index2-1))||((index2+1<=n-1)&&(j==index2+1))||(j==index2))
        if(element_array[i][j]!=element)
          puts element_array[i][j]
        end
      end
    end
  end
end
