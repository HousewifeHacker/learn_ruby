class Book
  attr_reader :title

  def title=(raw_title)
    @title = convert_title(raw_title)
  end

  def convert_title(raw_title)
    words = raw_title.capitalize!.split(' ')

    lowers = %w(a an the and or not to in out of)
    words.map! do |word|
      lowers.include?(word) ? word : word.capitalize
    end
    words.join(' ')
  end
end
