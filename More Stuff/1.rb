arr = ['laboratory', 'experiment','Pans Labyrinth','elaborate','polar bear']

arr.each do 
  |w|
  if w =~ /lab/
    puts w
  end
end