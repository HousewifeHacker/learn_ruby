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

  def tokens(math_string)
    math_array = math_string.split(" ")
    math_array.map! do |n|
      ["+","-","*","/"].include?(n) ? n.to_sym : n.to_i
    end
  end

  def evaluate(math_string)
    math_array = tokens(math_string)
    actions = { :+ => lambda{self.plus}, :- => lambda{self.minus}, 
      :* => lambda{self.times}, :/ => lambda{self.divide}}

    math_array.each do |operation|
      if actions.has_key?(operation)
        actions[operation].call
      else
        self.push(operation)
      end
    end
    self.value
  end

end
