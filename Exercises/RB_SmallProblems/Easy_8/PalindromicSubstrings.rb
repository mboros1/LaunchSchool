
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

def palindrome?(str)
  return false if str.size < 2
  str.reverse == str
end

#p palindrome? 'ab'

def palindromes(str)
  list = substrings(str)
  list.select {|x| palindrome?(x)}
end

 p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
    'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
    'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
    '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
    'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
