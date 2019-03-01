[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# checks truthiness of block return, will return true first time block has truthy value,
# if all value are falsey it will return false. For odd? method, will return true on 1 so will break
# on first iteration.
# Will also print out 1 baed on the puts num line, and break immediately after so will not print anything else.