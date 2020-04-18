# TO DO
# implement sets of words
# rating for each word, how good remembered it was and when it was practiced last time
# options - a batch or whole dictionary

require_relative 'word'
require_relative 'all_words'

WORD_PATTERN = /(?<article>d(ie|er|as))\s(?<word>\w*)/

puts "Welcome! Let's test your knowledge of German articles\n"
puts "Instructions:\n1-Play\n2-Add new words\n3-Write 'quit' if you want to quit.\n"
print ">"

option = gets.chomp

case option
when '1'
  puts "Let's play."

  guess = nil
  loop do
    word = Word.all.sample
    puts word.word
    guess = gets.chomp.downcase
    if guess == word.article
      puts "Great!\n---"
    elsif guess == 'quit'
      break
    else
      puts "Sorry, that's not right.\n---"
    end
  end
when '2'
  puts 'Write your words:'
  loop do
    new_word = gets.chomp
    if match = new_word.match(WORD_PATTERN)
      new_word_article, new_word_base = match.captures
      Word.new(new_word_article, new_word_base) #this works just the word is lost after leaving the app
    elsif new_word == 'quit'
      break
    else
      puts "Sorry, I can't understand the word. Please write an article and the noun."
    end
  end
end
