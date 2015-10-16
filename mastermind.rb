puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"

response = gets.chomp

if response == ("p" || "play")
  secret_code = 
  puts "I have generated a beginner sequence with four elements made up of: (r)ed,
        (g)reen, (b)lue, and (y)ellow.  Use (q)uit at any time to end the game.
        What's your guess?"
  guess = gets.chomp
  if guess == ("q" || "quit")
    puts "Goodbye!"
  elsif guess == ("c" || "cheat")
    puts "The curerent secret code is: #{secret_code}."
  end
elsif response == ("i" || "instructions")
  puts "To play Mastermind, enter four letters made up of 'r', 'g', 'b', and 'y'.  ex: 'rrgb'"
else
  puts "Goodbye!"
end
