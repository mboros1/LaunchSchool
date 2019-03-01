flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}

flintstones.each_with_index do |f,i|
  flintstones_hash[f] = i
end

p flintstones_hash
