def reverser
  backwards = []
  words = yield.split(" ")
  for word in words
    backwards << word.reverse
  end
  backwards.join(" ")
end

def adder(n=1)
  n + yield
end

def repeater(n=1)
  n.times {yield}
end
