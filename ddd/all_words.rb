require_relative 'word'
require_relative 'set_of_words'

@all_words = SetOfWords.new('All words')

# these are test words for now
@all_words.add_word(Word.new('die', 'Wolke'))
@all_words.add_word(Word.new('die', 'Sonne'))
@all_words.add_word(Word.new('die', 'Katze'))
@all_words.add_word(Word.new('das', 'Kind'))
@all_words.add_word(Word.new('das', 'Wasser'))
@all_words.add_word(Word.new('der', 'Stern'))
@all_words.add_word(Word.new('der', 'Ofen'))
