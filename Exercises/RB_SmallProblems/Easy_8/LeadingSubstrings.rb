
def substrings_at_start(str)
  sub_str = ''
  arr = []
  str.each_char do |c|
    sub_str += c
    arr << sub_str
  end
  arr
end


p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']