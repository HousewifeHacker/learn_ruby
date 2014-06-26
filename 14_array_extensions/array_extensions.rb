class Array

  def sum
    self.inject(0) { | total, num | total + num }
  end

  def square
    self.map { |num| num * num }
  end

  def square!
    self.map! { |num| num * num }
  end

end
