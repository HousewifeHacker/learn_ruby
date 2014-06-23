class Temperature

  def initialize(opts = {})
    @fahr = opts[:f] if opts.has_key?(:f)
    @cels = opts[:c] if opts.has_key?(:c)
  end

  def self.from_celsius(temp)
    self.new(:c => temp)
  end

  def self.from_fahrenheit(temp)
    self.new(:f => temp)
  end

  def self.ftoc(temp)
    self.new(:f => temp).in_celsius
  end

  def self.ctof(temp)
    self.new(:c => temp).in_fahrenheit
  end

  def in_celsius
    @cels ? @cels : (@fahr - 32) * 5.0/9
  end

  def in_fahrenheit
    @fahr ? @fahr : (@cels * 9.0/5 + 32)
  end

end


class Celsius < Temperature

  def initialize(temp)
    @cels = temp
  end

end


class Fahrenheit < Temperature

  def initialize(temp)
    @fahr = temp
  end

end
