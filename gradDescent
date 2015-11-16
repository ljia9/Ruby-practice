def params
  [0,0]
end

def examples
  [
    {
      :x => rand(10),
      :y => rand(10)
    },
    {
      :x => rand(10),
      :y => rand(10)
    }
  ]
end

def hypothesis(x, params)
  params[0] + params[1] * x
end

def cost_function(examples, params)
  examples.inject(0) do |result, example|
    result + (hypothesis(example[:x], params) - example[:y])**2
  end / (2 * examples.count)
end

def gradient_descent(examples, params, learning_rate)
  1000.times do 
    temp0 = params[0] - ( learning_rate * summed_error_0(examples, params))
    temp1 = params[1] - ( learning_rate * summed_error_1(examples, params))
    params[0] = temp0
    params[1] = temp1
  end

  params
end

def summed_error_0(examples, params)
  examples.inject(0) do |result, example|
    result + (hypothesis(example[:x], params) - example[:y])
  end / examples.count
end

def summed_error_1(examples, params)
  examples.inject(0) do |result, example|
    result + (hypothesis(example[:x], params) - example[:y]) * example[:x]
  end / examples.count
end

def generate_data(numPoints, bais, variance)
end

optimized_params = gradient_descent(examples, params, 0.01)
puts optimized_params
puts cost_function(examples, optimized_params)
