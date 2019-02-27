# ! is not unary operator,
puts !true # prints 'false'
puts !'asdf' # prints 'false', since a string evalutes as true
puts !(true && false) # prints 'true'

# ? is the ternary operator
a = [true, false].sample
puts if a ? 0 : 1 # depending on the random sample,
                  # if a is true then it will print 0 otherwise 1

# when at the end of a method, ! means it's a destructive method
# while ? means it returns a boolean. This is not a hard fast rule,
#  just a convention for ruby methods
# !! returns the boolean value of any object
# != is the not equals operator