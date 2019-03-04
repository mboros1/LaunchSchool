
def swapcase(str)
  str.chars.map do |c|
    if c =~ /[a-z]/
      c.upcase
    elsif c =~ /[A-Z]/
      c.downcase
    else
      c
    end
  end.join('')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
