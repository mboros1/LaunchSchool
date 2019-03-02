def prompt(sentence)
  puts ">>> #{sentence}"
end

prompt "Please write word or multiple words:"
sentence = gets.chomp

char_count = 0
sentence.chars.each { |c| char_count += 1 if c != ' ' }

prompt "There are #{char_count} characters in \"#{sentence}\""
