#Assignment 3: Array of string lengths

#While you're allowed and probably tempted to See the Solution before spending any time on the solution yourself, please don't do that.
#Hint: Consider using the Array#collect (aka Array#map) method for this.
#When looking at the documentation for Array#collect, note the difference between the one with and the one without the bang (!) at the end of the method name

list = ['brian', 'charlie', 'jonah']

listArrayFormat = []


list.map { |x| listArrayFormat << x.length}
puts listArrayFormat