def generate_random_values #Randomly generates the arguments to be passed onto the array             
    num_values = rand(5..10)  
    min_value = rand(1..50)   
    max_value = rand(51..100) 
  
    [num_values, min_value, max_value]
end

def generate_value_array(num_values, min_value, max_value)         #Pushes values to the array, using the arguments generated before
    values = []
    num_values.times do
      value = rand(min_value..max_value)
      values << value
    end
    values
end

num_values, min_value, max_value = generate_random_values
values = generate_value_array(num_values, min_value, max_value)

p values

# Enclose the code into a function, for easier reuse.
def bubble_sort(values)
    sorted = false
    # "sorted" is boolean; there is no need to compare it with true or false
    until sorted
      swapped = false
      values.each_with_index do |x,i|
        # exit the loop when the last item is reached
        break if i == values.length - 1
  
        if values[i] > values[i+1]
          values[i], values[i+1] = values[i+1], values[i]
          swapped = true
        end
      end
      # Boolean logic: it's sorted when no more items were swapped
      sorted = ! swapped
    end
    # Return the updated values
    values
  end
  
  print bubble_sort(values)

