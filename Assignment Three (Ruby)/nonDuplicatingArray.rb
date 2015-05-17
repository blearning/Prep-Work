#Assignment 4: Non-duplicate values in an Array

def nonDuplicates(array)
  # Write your code here
  puts array.uniq
end

stringArray = ['chicken', 'pork', 'beef', 'chicken', 'pork']
numArray = [17,2,5,1,3,5,4,17,2,5,1,4,1,2,3,4,5,6,1,2,3,4,1,2,3,4,5,6,7,17,2,1,3,4,5,6,7]

puts 'No Duplicate Strings + Sort:'
nonDuplicates(stringArray.sort)
puts ""

puts 'No Duplicate Integers + Sort:'
nonDuplicates(numArray.sort)
puts ""



#if array values do not equal to value, then push the value to the array