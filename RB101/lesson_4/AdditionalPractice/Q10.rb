munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |_, v|
  if v['age'] < 18
    v['age_group'] = 'child'
  elsif v['age'] < 65
    v['age_group'] = 'adult'
  else
    v['age_group'] = 'senior'
  end
end

p munsters