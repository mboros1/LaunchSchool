flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

first_be_index = flintstones.find_index do |f|
  f[0, 2] == 'Be'
end

p first_be_index