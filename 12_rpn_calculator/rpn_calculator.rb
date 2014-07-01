class RPNCalculator
  def initialize
    @q = []
  end

  def push(num)
    @q << num.to_f
    nil
  end

  def pop
    fail('calculator is empty') if @q.empty?
    @q.pop
  end

  def plus
    push(pop + pop)
    nil
  end

  def minus
    a = pop
    b = pop
    push(b - a)
    nil
  end

  def times
    push(pop * pop)
    nil
  end

  def divide
    a = pop
    b = pop
    push(b / a)
    nil
  end

  def value
    @q[-1]
  end

  def tokens(math_string)
    math_array = math_string.split(' ')
    math_array.map! do |n|
      ['+', '-', '*', '/'].include?(n) ? n.to_sym : n.to_i
    end
  end

  def evaluate(math_string)
    math_array = tokens(math_string)
    actions =
      { :+ => -> { plus }, :- => -> { minus },
        :* => -> { times }, :/ => -> { divide } }

    math_array.each do |operation|
      actions.key?(operation) ? actions[operation].call : push(operation)
    end
    value
  end
end
