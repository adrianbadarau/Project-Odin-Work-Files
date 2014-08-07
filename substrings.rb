dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(text, dict)
  text.downcase!
  counter = {}
  dict.each do |word|
    counts = text.scan(word).length
    counter[word] = counts unless counts < 1
  end
  counter
end

puts substring("Howdy partner, sit down! How's it going?", dictionary)

