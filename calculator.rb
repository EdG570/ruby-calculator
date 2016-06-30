def get_data()  
  Kernel.puts "Welcome to the Ruby Calculator!"

  Kernel.puts "Please enter the first number:"
  first_num = Kernel.gets.chomp.to_i

  Kernel.puts "Please enter the second number:"
  second_num = Kernel.gets.chomp.to_i

  Kernel.puts "Which operation would you like to perform? 1) add 2) subtract 3) multiply or 4) divide"
  operation = Kernel.gets.chomp.to_i

  eval_operation(operation, first_num, second_num)
end

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def divide(a, b)
  a / b
end

def eval_operation(operation, first_num, second_num)
  if operation == 1  
    result = add(first_num, second_num)
    Kernel.puts "Adding #{first_num} and #{second_num} results in: #{result}"
  elsif operation == 2
    result = subtract(first_num, second_num)
    Kernel.puts "Subtracting #{first_num} and #{second_num} results in: #{result}"
  elsif operation == 3
    result = multiply(first_num, second_num)
    Kernel.puts "Multiplying #{first_num} and #{second_num} results in: #{result}"
  elsif operation == 4
    result = divide(first_num.to_f, second_num.to_f)
    Kernel.puts "Dividing #{first_num} and #{second_num} results in: #{result}"
  else
    Kernel.puts "Sorry but that is not a valid option. Please try again!"  
    get_data()
  end
end

get_data()

