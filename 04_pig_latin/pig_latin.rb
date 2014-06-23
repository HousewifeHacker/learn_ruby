def translate(s)
  pig_latin = []
  words = s.split(" ")
  for word in words
    if word =~ /\As?qu/
      puts("here")
      i = word.index("u")+1
    else
      i = (word =~ /[aeiou]/)
    end
    pig_latin << (i == 0 ? word + "ay": word[i..-1] + word[0..i-1] + "ay")
  end
  pig_latin.join(" ")
end
