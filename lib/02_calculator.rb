def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def sum(num_array)
  x = 0
  num_array.each { |num| x += num }
  return x
end

def multiply(*nums)
  x = 1
  nums.each { |num| x *= num }
  return x
end

def power(x, i)
  answer = 1
  i.times do
    answer *= x
  end
  return answer
end

def factorial(num)
  answer = 1
  (1..num).to_a.each do
  |num|
  answer *= num
  end
  return answer
end
