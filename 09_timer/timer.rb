class Timer
  attr_writer :seconds

  def seconds
    0
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds - 3600 * hours) / 60
    secs = @seconds - 3600 * hours - 60 * minutes

    format('%02d:%02d:%02d', hours, minutes, secs)
  end
end
