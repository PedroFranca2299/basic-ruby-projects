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
prices = generate_value_array(num_values, min_value, max_value)

p prices