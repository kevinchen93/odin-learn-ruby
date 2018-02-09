Vowels = ["a", "e", "i", "o", "u"]

def letter_is_vowel(letter)
	Vowels.include?(letter) 
end

def first_letters(word)
	letters = word.split('')
	prev_letter = ''
	starting_consonant = []
	letters.each do |letter|
		if letter_is_vowel(letter) && (letter != 'u' && prev_letter != 'q')
			break
		else
			starting_consonant << letter
			prev_letter = letter 
		end
	end
	starting_consonant.join
end


def make_pig_word(word)
  starting_consonants = first_letters(word)
  num = starting_consonants.size
  remaining_word = word[num, word.length - num]
  new_word = remaining_word + starting_consonants + 'ay'
  new_word
end

def translate(sentence)
  pigged_words = sentence.split.map { |word| make_pig_word(word)}
  pigged_words.join(' ')
end