require_relative 'set_of_words'

class Word
  attr_reader :word, :article

  def initialize(article, word)
    @article = article
    @word = word
    @rating = 0
  end

  def to_s
    "#{@article} #{@word}"
  end
end
