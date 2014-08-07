def caesar_cipher_cript(text, key)
  msg = ''
  text.each_char do |i|
    msg += (i.ord + key).chr
  end
  msg
end

def caesar_cipher_decript(text, key)
  msg = ''
  text.each_char do |i|
    msg += (i.ord - key).chr
  end
  puts msg
end

cript = caesar_cipher_cript("What a string!", 50)

puts cript

caesar_cipher_decript(cript,7)

caesar_cipher_decript(cript,50)