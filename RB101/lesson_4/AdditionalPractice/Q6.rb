flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |f|
  f[0, 3]
end

p flintstones