require 'set'

class Word
  attr_reader :word, :article

  @@all = []

  def initialize(article, word)
    @article = article
    @word = word
    @rating = 0
    @@all << self
  end

  def self.all
    @@all
  end

  def to_s
    "#{@article} #{@word}"
  end
end
