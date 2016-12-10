def translate(input)
  output_array = input.split(" ").each do |word|
    
    i = 0
    while !['a', 'e', 'i', 'o', 'u'].include?(word[i])
      i += 1
    end
    
    i += 1 if word[i-1..i] == 'qu'
    unless i == 0
      word << word[0..i-1]
      word[0..i-1] = ""
    end
    
    word << "ay"
      
  end
  return output_array.join(" ")
end
