class Timer

  def seconds
    0
  end

  def seconds=(seconds)
    @time = seconds
  end

  def time_string
    hours = @time / 3600
    minutes = (@time - 3600*hours) / 60
    seconds = @time - 3600*hours - 60*minutes

    sprintf("%02d:%02d:%02d", hours, minutes, seconds)
  end

end
