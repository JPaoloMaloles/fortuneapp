class MyExamplesController < ApplicationController
  def random_fortune
    randomnumber = rand(0..2)
    fortunes = ["Fortune1", "Fortune2", "Fortune3"]
    render json: { message: "#{fortunes[randomnumber]}" }
  end

  def six_random_lotto
    sixdigit = ""
    6.times do
      randomnumberstring = rand(1..60).to_s
      sixdigit = sixdigit + randomnumberstring + " "
    end

    render json: { message: "Your lotto is: #{sixdigit}" }
  end

  def do_impossible
    render json: { message: "There is no constant seperate from the server to preserve a counter" }
  end

  def ninety_nine_bottles_of_beer
    x = 99
    lyrics = ""
    while x >= 0
      if x > 1
        lyrics = lyrics + "#{x} bottles of beer on the wall, #{x} bottles of beer.
        Take one down and pass it around, #{x - 1} bottles of beer on the wall."
      elsif x == 1
        lyrics = lyrics + "1 bottle of beer on the wall, 1 bottle of beer.
        Take one down and pass it around, no more bottles of beer on the wall."
      else
        lyrics = lyrics + "No more bottles of beer on the wall, no more bottles of beer.
        Go to the store and buy some more, 99 bottles of beer on the wall."
      end
      lyrics = lyrics + "
      "
      x = x - 1
    end

    render json: { message: lyrics }
  end

  def terminal_example
    render json: { message: [[color: "red", type: "a"], [color: "blue", type: "b"]] }
  end
end

# Feature 1: The page should return a random fortune. Every time you refresh the page, you’ll get a new fortune. You should make up at least 3 different fortunes.

# Feature 2: The page should return 6 randomly generated numbers between 1 and 60 so as to predict the upcoming lotto numbers.

# Feature 3: Every time a user visits/refreshes the page, the page should tell the user the number of visits made to that page so far. NOTE: This is impossible, but you should try your hand at this for a few minutes to discover why it’s impossible.
