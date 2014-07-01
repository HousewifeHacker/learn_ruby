class Array
  def sum
    reduce(0, :+)
  end

  def square
    dup.square!
  end

  def square!
    map! { |num| num * num }
  end
end
