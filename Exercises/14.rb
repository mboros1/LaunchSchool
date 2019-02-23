contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

contact_info = [:email, :address, :phone]

contact_info.each_index {
    |i|
    contacts['Joe Smith'][contact_info[i]] = contact_data[i]
}

p contacts

# if there were more contacts, so each index in contact_data array that had an equal number of keys in
# the hash, would look over the keys and indexes of contacts, and have an inner loop for index of
# contact_info like the one above. Use these loops to set each contact