
def word_sizes(sentence)
  size_hash = {}
  return size_hash if sentence.empty?

  sentence.split(' ').each do |word|
    size = word.length
    if size_hash.key? size
      size_hash[size] += 1
    else
      size_hash[size] = 1
    end
  end
  size_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}