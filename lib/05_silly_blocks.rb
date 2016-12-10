def reverser()
  output_array = yield.split(" ").each do
    |word|
    word.reverse!
  end
  return output_array.join(" ")
end

def adder(i=1)
  return yield + i
end

def repeater(i=1)
  i.times do
    yield
  end
end