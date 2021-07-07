def map(array) #this method is going to map over an array and return a new array of manipulated elements
  #map returns a new array of manipulated elements
  new = [] #this is the new array that we are going to be adding the new manipulated elements to
  i = 0 #counter accesses each index of the array staring with index 0 which is the first element
  while i < array.length #the while statement loops over the array while condition is true, the condition here
                          # is while "i"(the counter) is less than the length of the array. (while elements are there)
                          # we loop over the array so we can access and manipulate every element
      new.push(yield(array[i])) #.push "pushes" the new elements in the new array that we will be returning
                                #yield passes blocks to a method, with yield you can pass an argument
                                #whatever data we pass in will pass to the block that is being called on the method
    i += 1 #this increments the counter so that it goes over every element in the array
  end #this ends the loop
  new #the new array is returned with the manipulated elements
end #this ends the method



def reduce(array, sv=nil) # since the second argument in this lab is optional we set it equal to nil this way
                          # the second argument will remain nil until explicitly called on
  if sv #this if statement is created for the purpose of possibly having a starting value
    sum = sv #if a starting value is given sum will be the starting value
    i = 0 #counter
  else
    sum = array[0] #if there is no starting value the start will be the first element of the array(index 0)
    i = 1 #the previous line already deals with the first element so this moves onto the next
  end

  while i < array.length #this loop will execute until the length of the array is met
    sum = yield(sum, array[i]) #we're using this yield keyword to pass the sum(which is the staring value
                                # which could either be the actual value we're starting at or the first element)
                              # and then we're passing an element(array[i])
    i += 1 #increments counter until end of array 
  end
  sum
end
