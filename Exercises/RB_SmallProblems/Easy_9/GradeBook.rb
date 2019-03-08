
def get_grade(g1,g2,g3)
  score = (g1 + g2 + g3) / 3
  
  if 90 <= score && score <= 100  
    return 'A'
  elsif 80 <= score && score < 90  
    return 'B'
  elsif 70 <= score && score < 80  
    return 'C'
  elsif 60 <= score && score < 70  
    return 'D'
  elsif 0 <= score && score < 60 
    return 'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
