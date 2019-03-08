
hsh = {
  first: ['the', 'quick'], 
  second: ['brown', 'fox'], 
  third: ['jumped'], 
  fourth: ['over', 'the', 'lazy', 'dog']
  }


hsh.each_value do |arr|
  arr.each do |str|
    str.each_char do |c|
      if c =~ /[a,e,i,o,u]/
        puts c
      end
    end
  end
end


