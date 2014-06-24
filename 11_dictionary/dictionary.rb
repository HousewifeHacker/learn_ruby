class Dictionary

  def initialize
    @dict = Hash.new
  end

  def add(item)
    if item.class == String
      temp = {}
      temp[item] = nil
    elsif item.class == Hash
      temp = item
    end
    @dict.merge!(temp)
    return nil
  end

  def keywords
    @dict.keys.sort
  end

  def entries
    @dict
  end

  def include?(key)
    @dict.include?(key)
  end

  def find(search_term)
    results = {}
    @dict.each_key do |key|
      results[key] = @dict[key] if key =~ /\A#{search_term}/
    end
    results
  end

  def printable
    s = []
    @dict.sort.each {|key, value| s << "[#{key}] \"#{value}\""}
    s.join("\n")
  end

end
