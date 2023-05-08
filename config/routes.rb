Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/randomfortune", controller: "my_examples", action: "random_fortune"

  get "/sixrandomlotto", controller: "my_examples", action: "six_random_lotto"

  get "/doimpossible", controller: "my_examples", action: "do_impossible"

  get "/ninety_nine_bottles_of_beer", controller: "my_examples", action: "ninety_nine_bottles_of_beer"

  get "/terminal_example", controller: "my_examples", action: "terminal_example"
end

# Feature 1: The page should return a random fortune. Every time you refresh the page, you’ll get a new fortune. You should make up at least 3 different fortunes.

# Feature 2: The page should return 6 randomly generated numbers between 1 and 60 so as to predict the upcoming lotto numbers.

# Feature 3: Every time a user visits/refreshes the page, the page should tell the user the number of visits made to that page so far. NOTE: This is impossible, but you should try your hand at this for a few minutes to discover why it’s impossible.
