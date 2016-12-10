class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    secs = @seconds % 60
    mins = @seconds / 60 % 60
    hrs =  @seconds / 60 / 60
    
    def two_digitify(num)
      num < 9 ? '0' << num.to_s : num.to_s
    end
    
    return "#{two_digitify(hrs)}:#{two_digitify(mins)}:#{two_digitify(secs)}"
  end
end
