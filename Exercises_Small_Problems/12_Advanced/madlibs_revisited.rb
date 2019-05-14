# Make a madlibs program that reads in some text from a text file that you have created, and then plugs in a selection of 
# randomized nouns, verbs, adjectives, and adverbs into that text and prints it. You can build your lists of nouns, verbs, adjectives, and adverbs 
# directly into your program, but the text data should come from a file or other external source. Your program should read this text, and for each line, 
# it should place random words of the appropriate types into the text, and print the result.

=begin

	Problem:
			- read text from a text file (external source)
			- create a list of nouns, verbs, adjectives and adverbs (directly in program)
			- for each line of the text, plance random words of the appropriate types into the text
			- print the result

			nouns - who?
			verbs - what?
			adjectives - what kind of?
			adverbs - where? when? how?

	Example:

			The sleepy brown cat noisily
			licks the sleepy yellow
			dog, who lazily licks his
			tail and looks around.
	
	Date Structure:

			- Create a separate array for nouns, verbs, adjectives and adverbs
			- Store 4-5 items in each

	Alogrithm:
			- read the file from the external source and assign it to text local variable
			- create an array (lines) and store the split text at end of line (chomp the new line character)
			- create an empty array (result)
			- iterate over lines array
					- if current item is 'noun', 'verb', 'adjective' or 'adverb' then randomly assign a value from the relevant array *
						and append it into result array as an inner array
					- if not then append current item to result array as an inner array

			- iterate over result
					- output each line

	Notes:
			* - last char might going to be a ',','.' etc. which means the comparision will return false even should be true
				Solution: - have to break up the words - if current char is (a..z || A..Z) should be stored in abc_chars,
									every other char should be stored in other_chars.
									- comparision should happen between abc_chars.downcase == 'adjective' etc.
											- if yes append to result as an inner array the random noun/adjective etc. + other_chars
=end

NOUN = %w( dog cat cow horse farmer )
ADJECTIVE = %w( yellow big small tall short )
ADVERB = %w( loudly excitedly fast slowly angryly )
VERB = %w( barking running jumping sleeping standing )

def insert_word(abc_word, other_chars)
	random_word = nil
	case abc_word.upcase
		when "NOUN" then random_word = NOUN.sample
		when "ADJECTIVE" then random_word = ADJECTIVE.sample
		when "ADVERB" then random_word = ADVERB.sample
		when "VERB" then random_word = VERB.sample
	end

	if random_word
		(other_chars.empty?) ? random_word : (random_word + other_chars)
	else
		(other_chars.empty?) ? abc_word : (abc_word + other_chars)
	end
end

text = File.open("midlib.txt", "r")

lines = text.each_line.map { |line| line.chomp("\n") }
result = []
letters = [*'a'..'z'] + [*'A'..'Z']

lines.each do |line|
	new_line = []
	words = line.split(' ')
	words.each do |word|
		abc_word = ''
		other_chars = ''
		word.chars.each do |char|
			 letters.include?(char) ? (abc_word << char) : (other_chars << char)
		end
		new_line << [insert_word(abc_word, other_chars)] # inserting array including which contains returned word(string) by method insert_word
	end
	result << new_line.flatten
end

result.each do |line|
	puts line.flatten.join(' ')
end

text.close