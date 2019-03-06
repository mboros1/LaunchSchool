
def substrings_at_start(str)
  sub_str = ''
  arr = []
  str.each_char do |c|
    sub_str += c
    arr << sub_str
  end
  arr
end

def substrings(str)
  n = str.size - 1
  arr = []

  (0..n).each do |x|
    arr << substrings_at_start(str[x..-1])
  end
  arr.flatten
end

p substrings('abcde') == [
    'a', 'ab', 'abc', 'abcd', 'abcde',
    'b', 'bc', 'bcd', 'bcde',
    'c', 'cd', 'cde',
    'd', 'de',
    'e'
]