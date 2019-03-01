words = "the flintstones rock"

def titleize sentence
  sentence_arr = sentence.split(' ')
  sentence_arr.map! do |word|
    word.capitalize
  end

  sentence_arr.join(' ')
end

p titleize words