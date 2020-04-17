class Set
  attr_reader :id
  attr_accessor :name, :words

  def initialize(id, name)
      @id = id
      @name = name
      @words = []
  end

  def add_word(word)
      @words << word
  end
end
