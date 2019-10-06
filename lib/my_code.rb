# Your Code Here

def map(arr)
  updated = []
  counter = 0
  while counter < arr.length
    updated.push(yield(arr[counter]))
    counter += 1
  end
  updated
end

def reduce(arr, arr1=nil)
  if arr1
    updated = arr1
    counter = 0
  else
    counter = 1
    updated = arr[0]
  end
  
  while counter < arr.length
    updated = yield(updated, arr[counter])
    counter = counter + 1
  end
  
  updated
end
