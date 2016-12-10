class Dictionary
  # TODO: your code goes here!
  attr_accessor :entries
  attr_accessor :keywords
  def initialize
    @entries = {}
    @keywords = []
  end
  
  def add(data)
    if data.is_a? Hash
      data.each do
        |key, value|
        @entries[key] = value
        @keywords.push(key)
      end
    else 
      @entries[data] = nil
      @keywords.push(data)
    end
  end
  
  def include?(key)
    keywords.include?(key)
  end
  
  def find(key)
    entries.select { |k, v| k.include?(key) and v != nil }
  end
  
  def keywords
    @keywords.sort
  end
  
  def printable
    out = @entries.sort_by { |k, v| k}.map { |k, v| "[#{k}] \"#{v}\"\n" }.join("")[0..-2]
  end
  
end
