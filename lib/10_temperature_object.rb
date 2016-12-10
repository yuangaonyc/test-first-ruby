class Temperature
  attr_accessor :c
  attr_accessor :f
  
  init_hash = { :c => nil, :f => nil }
  
  def initialize(init_hash)
    @c = init_hash[:c]
    @f = init_hash[:f]
  end
  
  def self.from_celsius(c)
    Temperature.new(:c => c)
  end
  
  def self.from_fahrenheit(f)
    Temperature.new(:f => f)
  end
  
  def in_fahrenheit
    @f? @f : @c * 9.0/5.0 + 32
  end
  
  def in_celsius
    @c? @c : (@f - 32) * 5/9
  end
  
end

class Celsius < Temperature
  def initialize(c)
    @c = c
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    @f = f
  end
end