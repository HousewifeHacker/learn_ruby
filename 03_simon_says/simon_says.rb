def echo(in_string)
  in_string
end

def shout(in_string)
  in_string.upcase
end

def repeat(in_string, num=2)
  ([in_string]*num).join(" ")
end

def start_of_word(in_string, x)
  in_string[0,x]
end

def first_word(in_string)
  in_string.split(' ').first
end

def titleize(in_string)
  words = in_string.split(" ")
  cap_words = [words.shift.capitalize]
  for word in words
    if ["a", "an", "the", "over", "under", "or", "and"].include?(word)
      cap_words << word
    else
      cap_words << word.capitalize
    end
  end
  cap_words.join(" ")
end
