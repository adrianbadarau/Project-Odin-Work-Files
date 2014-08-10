
lines = File.readlines(ARGV[0])
stop_words = %w{the a by on for of are with just but and to the my I has some in}
l_count = lines.size
text =lines.join
text_scan = text.scan(/\w+/)
keywords = text_scan.select{|word| !stop_words.include?(word)}
total_chars_no_space = text.gsub(/\s+/,'')
word_count = text.split.length
sentence_count = text.split(/\.|\?|!/).length
paragraph_count = text.split(/\n\n/).length
#Sumary of the text
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?\!/)
sentences_sorted = sentences.sort_by {|sentence| sentence.length}
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third+1)
ideal_sentences = ideal_sentences.select{|sentence| sentence =~ /is|are/}

puts '---Begin Analisis ----'
puts "text has #{l_count} lines"
puts "text has #{text.size} chars"
puts "text has #{total_chars_no_space.size} chars without spaces"
puts "text has #{word_count} words"
puts "text has #{sentence_count} sentences"
puts "text has #{paragraph_count} paragraphs"
puts "text has #{sentence_count/paragraph_count} sentences per paragraph (average)"
puts "text has #{word_count/sentence_count} words per sentence (average)"
puts "text has #{((keywords.size.to_f/text_scan.size.to_f)*100).to_i}% important words"
puts "Sumarry: \n\n" + ideal_sentences.join('. ')
puts '---End Analisis ----'