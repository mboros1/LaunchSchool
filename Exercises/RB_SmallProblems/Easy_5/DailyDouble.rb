
def crunch(str)
  last_char = ''
  new_str = ''
  str.each_char do |c|
    new_str << c unless c == last_char
    last_char = c
  end
  new_str
end



p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''