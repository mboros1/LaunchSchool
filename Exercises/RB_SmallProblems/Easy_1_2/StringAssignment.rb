
name = 'Bob'
save_name = name
# at this point, save_name and name have the same object_id
name = 'Alice'
# assigning 'Alice' to name changes the object_id of name, but not save_name
puts name, save_name
# since it's now two different objects, will print both names
puts name.object_id == save_name.object_id

name = 'Bob'
save_name = name
# same as before, both save_name and name have the same object_id
name.upcase!
# Now, calling destructive function on name, and since they have the same object_id both are modified
puts name, save_name
puts name.object_id == save_name.object_id