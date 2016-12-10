class Array 
  def sum
    i = 0
    self.each { |x| i += x }
    i
  end
  
  def square
    self.any? ? self.map { |x| x * x } : self
  end
  
  def square!
    self.map! { |x| x * x }
  end
  
end