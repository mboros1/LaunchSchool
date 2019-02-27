greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # a => "hi there"

# this happens because the assignment of the 'a' object inside the greetings hash to informal_greeting's
# caused them to have the same object_id. The << operator modifies the underlying object without changing
# the object_id, so both variables were modified.