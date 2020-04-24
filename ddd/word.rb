require_relative 'set_of_words'

@@all_words = SetOfWords.new('All words')

class Word
  attr_reader :word, :article

  def initialize(article, word)
    @article = article
    @word = word
    @rating = 0
    @@all_words.add_word(self)
  end

  def to_s
    "#{@article} #{@word}"
  end
end
