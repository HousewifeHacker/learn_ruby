def translate(s)
  words = s.split(' ')
  words.map! do |word|
    i = word =~ /\As?qu/ ? word.index('u') + 1 : word =~ /[aeiou]/
    i.zero? ? word + 'ay' : word[i..-1] + word[0.. i - 1] + 'ay'
  end
  words.join(' ')
end
