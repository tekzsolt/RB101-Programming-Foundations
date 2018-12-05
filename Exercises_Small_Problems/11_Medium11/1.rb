file = File.open("1.txt", "r")
ENDINGS = [".", "!", "?"]
sentences = {}
words = []

file.each do |line|
  words << line.split
end
words.flatten!

counter = 1
words.each do |word|
  sentences[counter] = '' if sentences[counter].nil?
  sentences[counter] << word + " "
  if ENDINGS.include?(word[-1])
    sentences[counter].rstrip!
    counter += 1
  end
end

lengths = []
sentences.each do |key, value|
  sentence_words = value.split(' ')
  lengths << [sentence_words.size, key]
end
lengths.sort!

longest_sentence = sentences[lengths[-1][-1]]
longest_sentence_length = lengths[-1][0]
puts "The longest sentence is: #{longest_sentence}"
puts "The length is: #{longest_sentence_length} "

file.close
