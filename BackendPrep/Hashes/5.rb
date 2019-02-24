person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts person.values.include?('Bob')
puts person.values.include?('dog trainer')

puts person.has_value?('Bob')
puts person.has_value?('dog trainer')