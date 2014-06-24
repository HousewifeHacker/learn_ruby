class RPNCalculator

  def initialize
    @q = []
  end

  def push(num)
    @q << num.to_f
    return nil
  end

  def pop
    raise("calculator is empty") if @q.empty?
    @q.pop
  end

  def plus
    self.push( self.pop + self.pop )
    return nil
  end

  def minus
    a = self.pop
    b = self.pop
    self.push( b - a )
    return nil
  end

  def times
    self.push( self.pop * self.pop )
    return nil
  end

  def divide
    a = self.pop
    b = self.pop
    self.push( b / a)
    return nil
  end

  def value
    @q[-1]
  end

end
