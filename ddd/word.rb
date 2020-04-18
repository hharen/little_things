require 'set'

class Word
  attr_reader :word, :article

  @@all_words = []

  def initialize(article, word)
    @article = article
    @word = word
    @rating = 0
    @@all_words << self
  end

  def self.all
    @@all_words
  end

  def to_s
    "#{@article} #{@word}"
  end
end
