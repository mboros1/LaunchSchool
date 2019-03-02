def spin_me(str)
  str.split.each do |word| # each returns same object, but split is a new object
    word.reverse! # reverse! same object
  end.join(" ") # join is a new object again
end

hi = "hello world"
puts hi.object_id
puts spin_me(hi).object_id # "olleh dlrow"

# because it switches from string to array to string, it will be a new object