def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(nums)
  nums.reduce(0, :+)
end

def multiply(*nums)
  nums.reduce(1, :*)
end

def power(x,y)
  total = 1
  y.times { total = multiply(total, x) }
  total
end

def factorial(x)
  x <= 1 ? 1 : multiply(x, factorial(x - 1))
end
