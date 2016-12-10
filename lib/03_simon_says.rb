def echo(word)
  return word
end

def shout(word)
  return word.upcase
end

def repeat(word, i=2)
  say = ""
  i.times do 
    say << " #{word}"
  end
  return say[1..-1]
end

def start_of_word(word, i)
  return word[0..i-1]
end

def first_word(sentence)
  return sentence.split(" ")[0]
end

def titleize(sentence)
  word_list = sentence.split(" ")
  word_list_titleize = word_list.each do
    |word| 
    next if ['and', 'over', 'the'].include?(word)
    word[0] = word[0].upcase 
    end
  word_list_titleize[0][0] = word_list_titleize[0][0].upcase
  return word_list_titleize.join(" ")
end