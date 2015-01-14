## BEWARE THE SEICOLON
#words[rand(words.length)]
require 'set'

class Hangname
  attr_accessor :word, :turn_count, :guesses, :answer

def initalize(turn_count)
  @turn_count = turn_count
  @guesses = guesses = Set.new
  @answers = new_word
end

def guess(letter)
 guesses.add(letter)
end

def finished? (turns, guesses, answer)
  turns.zero? || answer.chars.all { |l| guesses.inclue?(l) }
end

def to_s(answer, guesses)
  answer.each_char do |x|
    if guesses.include x
      print x
    else
      print '[]'
    end
end


def class_words
    words = ['angus',
             'northrend',
             'warcraft',
             'counterstrike',
             'counterterrorist',
             'artyom',
             'youtube',
             'leagueoflegends',
             'marxist',
             'darwinism',
             'orgrimmar',
             'atlanta',
             'konamicode',
             'empires'
             ]

        return words.sample
      end
end

puts "Welcome to Hangman! Hope your ready to play!"


puts "Guess the word! #{game.answer}"
gets
until game.finished?(game.turn_count,game.guesses,game.answer)
  game.to_s(game.answer, game.guesses)
  print "Guess a letter: "
  game.guess(gets.chomp)
end
#
# def to_placeholders testw, guessedw
#   placeholder = ''
#   testw.chars {|char| placeholder += (guessedw.include? char)? char : '_ '
#   }
#   placeholder
# end
#
# puts `clear`
# puts 'Can you get this word right? :'+ to_placeholders(word, '')
#
# while true
#   print "Guess a letter! You have [#{guesses - wrong_guesses}] tries left "
#
#   char = gets.chomp
#
#   if word.include? char
#
#     if(right_letter.include? char)
#       puts char + 'This letter has already been entered!'
#       puts 'Please enter another letter ' + to_placeholders(word, right_letter)
#     else
#       right_letter = right_letter + char
#       placeholder = to_placeholders(word, right_letter)
#
#       puts 'Nice one! ' + placeholder
#     end
#     unless placeholder.include? '_ '
#       puts "Congrats! All our base belong to you!"
#       break
#     end
#
#   else
#     puts "Sorry, not even close!"
#     wrong_guesses += 1
#
#     if wrong_guesses == guesses
#       puts "Sorry game over! The word was "
#       puts word
#     else
#       puts 'Try again! ' + to_placeholders(word, right_letter)
#     end
#   end
# end
#
# # def finished? (turns,guesses, answer)
# #  turns.zero? || answer.chars.all { |l| guesses.include?(l) }
# # end
#
#
#
#
# # def hangman(words)
# #   turn_count = ARGV.empty? ? 6 : ARGV(0).to_i
# #   guessed = set.new
# #   answer = words.sample(1)[0]
# #   puts greeting
# #   until finished?(turn_count, guessed, answer)
# #     guess = prompt_player
# #     guesses.add(guess)
# #     unless answer.include?(guess)
# #     turn_count -= 1
# #   end
# #   end
# #   game_over # TODO: Do Ineed an argument?
# # end
