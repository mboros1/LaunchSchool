
def repeater(str)
  new_str = ""
  str.each_char do |c|
    new_str += c*2
  end
  new_str
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

