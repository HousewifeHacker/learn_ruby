def echo(in_string)
  in_string
end

def shout(in_string)
  in_string.upcase
end

def repeat(in_string, num = 2)
  ([in_string] * num).join(" ")
end

def start_of_word(in_string, x)
  in_string[0, x]
end

def first_word(in_string)
  in_string.split(' ').first
end

def titleize(in_string)
  words = in_string.capitalize.split(' ')
  words.map! do |word|
    little = %w(a an the over under or and)
    little.include?(word) ? word : word.capitalize
  end
  words.join(' ')
end
