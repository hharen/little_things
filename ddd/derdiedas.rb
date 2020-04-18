# TO DO
# implement sets of words
# rating for each word, how good remembered it was and when it was practiced last time
# options - a batch or whole dictionary

require_relative 'word'
require_relative 'all_words'

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
  puts 'Write your words: (this needs to be implemented)'
end
