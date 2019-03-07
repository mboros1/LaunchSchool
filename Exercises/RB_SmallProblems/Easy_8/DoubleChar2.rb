
def double_consonants(str) 
  new_str = ""
  str.each_char do |c|
    if c.upcase =~ /[A,E,I,O,U]/ 
      new_str += c
    elsif c.upcase =~ /[A-Z]/
      new_str += c*2
    else
      new_str += c
    end 
  end
  new_str
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
