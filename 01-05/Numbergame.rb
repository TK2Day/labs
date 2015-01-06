number = rand(100)

puts "I'm thinking of a number 1 through 100, can you get it?"

puts "Get the number win a prize!"
guess = gets.chomp.to_i

until guess == number do
  if guess > number
    puts "Way too high"
  guess = gets.chomp.to_i
  elsif guess < number
    puts "Too low"
  guess = gets.chomp.to_i
  elsif guess == number


    end

end
print "You are winrar!"
