hash = {a:1,b:2,c:3}

hash.each_key {|e| puts e}
hash.each_value {|e| puts e}
hash.each {|k,v| puts "#{k} #{v}"}