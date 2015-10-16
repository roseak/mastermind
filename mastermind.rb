class Mastermind
  def initialize
    @guesses = []
  end

  def startup
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    response = gets.chomp
    first_response(response)
  end

  def first_response(response)
    if response == ("p" || "play")
      play
    elsif response == ("i" || "instructions")
      puts "To play Mastermind, enter four letters made up of 'r', 'g', 'b', and 'y'.  ex: 'rrgb'"
      startup
    else
      puts "Goodbye!"
    end
  end

  def play
    @letters = ["r", "g", "b", "y"]
    @secret_code = (0..3).map { letters[rand(4)]}.join
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,
          (g)reen, (b)lue, and (y)ellow.  Use (q)uit at any time to end the game.
          What's your guess?"
    guesser
  end

  def guesser
    @guess = gets.chomp
    until @guess == @secret_code || @guess == ("q" || "quit")
      @guesses << @guess
      if @guess == ("c" || "cheat")
        puts "The curerent secret code is: #{@secret_code}. Cheat mode. Try again..."
        @guess = gets.chomp
      elsif @guess.length < 4
        puts "The guess is too short.  Please enter four elements."
        @guess = gets.chomp
      elsif @guess.length > 4
        puts "The guess is too long.  Please enter only four elements."
        @guess = gets.chomp
      else
        four_letters(@guess)
        puts "'#{@guess.upcase}'.  Please enter another guess."
        @guess = gets.chomp
      end
    end

    if @guess == @secret_code
      correct_guess
    end
  end

  def four_letters(@guess)
    broken_guess = guess.chars
    broken_secret = @secret_code.chars
    mashup = broken_guess.zip(broken_secret)
    count = mashup.map do |pair|
    end
  end

  def correct_guess
    puts "Congratulations!  You guessed the sequence '#{@secret_code.upcase}'
          in #{@guesses.length} guesses over time.\n\n
          Do you want to (p)lay again or (q)uit?"
    second_response = gets.chomp
    if second_response == ("p" || "play")
      play
    else
      @guess == "q"
    end
  end
end

Mastermind.new.startup
