
def map(source_array) #use basic name dont be fun it aint work
  new_and_improved_array = []
  i = 0 
  while i < source_array.length 
  new_and_improved_array.push(yield(source_array[i]))
  i+= 1
end
return new_and_improved_array
end 

def reduce(source_array, starting_value = nil) 
 if starting_value
   launch_point = starting_value
   i = 0
 else 
   launch_point = source_array[0]
   i = 1
 end
 while i < source_array.length do 
   launch_point = yield(launch_point, source_array[i])
   i += 1
end
return launch_point 
end

