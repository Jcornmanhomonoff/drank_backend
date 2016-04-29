def create
  @drink = current_user.drinks.build(drink_params)

  if @drink.save
    render json: @drink, status: :created, location: @drink
  else
    render json: @drink.errors, status: :unprocessable_entity
  end
end

#!/bin/bash

post '/sign-in' => 'users#signin'


curl --include --request POST http://localhost:3000/change-password/2 \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "jess",
      "new": "bob"
    }
  }'

curl --include --request POST http://localhost:3000/rescues/ \
 --header "Content-Type: application/json" \
 --data '{
   "rescue": {
     "title": "Guide to refactoring and Sniffing Out Code Smells",
     "url": "https://sourcemaking.com/refactoring/smells",
     "tag": "cheatsheet, refactor, code smells, "
   }
 }'
