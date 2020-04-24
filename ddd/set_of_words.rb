class SetOfWords
  attr_accessor :name, :words

  def initialize(name)
      @name = name
      @words = []
  end

  def add_word(word)
      @words << word
  end

  def all
    @words
  end

  def sample
    @words[rand(0..@words.length - 1)]
  end
end
