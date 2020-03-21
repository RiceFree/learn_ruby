class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    time = Time.new(0)
    (time + @seconds).strftime("%H:%M:%S")
  end

  def padded number
    split_number = number.to_s.split(//)
    if split_number.length == 1
      number = "0" + number.to_s
    end
    number = number.to_s
  end

end
