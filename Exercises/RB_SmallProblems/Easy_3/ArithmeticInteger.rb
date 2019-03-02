def prompt(sentence)
  puts ">>> #{sentence}"
end

n1,n2 = 0
prompt "Enter the first integer:"
n1 = gets.chomp.to_i
prompt "Enter the second integer:"
n2 = gets.chomp.to_i

prompt "#{n1} + #{n2} = #{n1 + n2}"
prompt "#{n1} - #{n2} = #{n1 - n2}"
prompt "#{n1} * #{n2} = #{n1 * n2}"
prompt "#{n1} / #{n2} = #{n1 / n2}"
prompt "#{n1} % #{n2} = #{n1 % n2}"
prompt "#{n1} ** #{n2} = #{n1 ** n2}"
