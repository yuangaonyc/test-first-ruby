class Book
  # TODO: your code goes here!
  def title=(title)
    arr = title.split(" ")
    arr[0][0] = arr[0][0].upcase
    arr.each do
      |word|
      next if ['and', 'if', 'of', 'the', 'in', 'a', 'an'].include?(word)
      word[0] = word[0].upcase
    end
    title = arr.join(" ")
    @title = title
  end
  def title
    @title
  end
  
end
