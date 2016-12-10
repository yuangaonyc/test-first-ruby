class RPNCalculator
  # TODO: your code goes here!
  attr_accessor :postfix
  def initialize
    @postfix = []
  end
  
  def push(data)
    @postfix.push(data)
  end
  
  def value
    @postfix[-1]
  end
    
  @@check_empty = Proc.new do
    |postfix|
    unless postfix[-2] != nil and postfix[-1] != nil
     raise "calculator is empty"
    end
  end

  def plus
    @@check_empty.call(@postfix)
    @postfix[-2..-1] = @postfix[-2] + @postfix[-1]
  end
  
  def minus
    @@check_empty.call(@postfix)
    @postfix[-2..-1] = @postfix[-2] - @postfix[-1]
  end
  
  def divide 
    @@check_empty.call(@postfix)
    @postfix[-2..-1] = @postfix[-2].to_f / @postfix[-1].to_f
  end
  
  def times
    @@check_empty.call(@postfix)
    @postfix[-2..-1] = @postfix[-2].to_f * @postfix[-1].to_f
  end
  
  def tokens(string)
    return string.split(" ").map! { |x| ['+', '-', '*', '/'].include?(x) ? x.to_sym : x.to_i }
  end

  def evaluate(string)
    arr = tokens(string)
    arr.each do
      |char|
      case char
        when Integer then push(char)
        when :+ then plus
        when :- then minus
        when :* then times
        when :/ then divide
      end
    end
    return value
  end
  
end
