

def get_uuid()

  hex_chars = ('a'..'f').to_a + ('0'..'9').to_a

  uuid = ''
  
  8.times { uuid << hex_chars.sample }
  uuid << '-'
  3.times do
    4.times { uuid << hex_chars.sample }
    uuid << '-'
  end
  12.times { uuid << hex_chars.sample }
  uuid
end

p get_uuid()

