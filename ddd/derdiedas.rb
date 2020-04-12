# the app should present the user with a german word, wait for his guess on article
# and say if he's right
# it should have sets
# rating for each word, how good remembered it was and when it was practiced last time
# options - a batch or whole dictionary

require_relative 'word'
require_relative 'all_words'

# test words
all_words = {
  Sonne: 'die',
  Wasser: 'das',
  Kind: 'das',
  Stern: 'der',
  Ofen: 'der',
}

sonne = Word.new('die', 'Sonne')
puts sonne

puts "Welcome! Let's test your knowledge of German articles\n"
puts "Instructions:\n1-Play\n2-Add new words\n3-Write 'quit' if you want to quit.\n"
print ">"

option = gets.chomp

case option
when '1'
  puts "Let's play."

  guess = nil
  loop do
    word = all_words.keys.sample
    puts word
    guess = gets.chomp.downcase
    if guess == all_words[word]
      puts "Great!\n---"
    elsif guess == 'quit'
      break
    else
      puts "Sorry, that's not right.\n---"
    end
  end
when '2'
  puts 'Write your words:'
end
