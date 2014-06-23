def add(x,y)
  x + y
end

def subtract(x,y)
  x - y
end

def sum(nums)
  nums.inject(0){ |sum, num| sum + num }
end

def multiply(*nums)
  nums.inject(1){ |sum, num| sum * num }
end

def power(x,y)
  total = 1
  y.times { total = multiply(total, x) }
  total
end

def factorial(x)
  if x<= 1
    1
  else
    multiply(x, factorial(x-1))
  end
end
