
munsters = {
	  "Herman" => { "age" => 32, "gender" => "male" },
	    "Lily" => { "age" => 30, "gender" => "female" },
	      "Grandpa" => { "age" => 402, "gender" => "male" },
	        "Eddie" => { "age" => 10, "gender" => "male" },
		  "Marilyn" => { "age" => 23, "gender" => "female"}
}

male_munsters = munsters.select {|_,v| v['gender'] == 'male'}

male_age = 0

male_munsters.each {|_,v| male_age += v['age']}

p male_age

