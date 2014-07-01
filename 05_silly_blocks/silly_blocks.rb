def reverser
  words = yield.split(' ')
  words.map! { |word| word.reverse }
  words.join(' ')
end

def adder(n = 1)
  n + yield
end

def repeater(n = 1)
  n.times { yield }
end
