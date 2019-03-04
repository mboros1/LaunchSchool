
def staggered_case(sentence)
  upcase = true
  sentence.chars.map do |c|
    if c =~ /[a-zA-Z]/
      if upcase
        upcase = false
        c.upcase
      else
        upcase = true
        c.downcase
      end
    else
      upcase = !upcase
      c
    end
  end.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'