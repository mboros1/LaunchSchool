advice = "Few things in life are as important as house training your pet dinosaur."

# advice = advice.split('important').join('urgent') # first try, first thing that came to mind

advice.gsub!('important', 'urgent') # cleaner method

puts advice