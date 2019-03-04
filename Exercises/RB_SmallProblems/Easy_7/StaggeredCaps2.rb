
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
      #upcase = !upcase
      c
    end
  end.join
end


p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'