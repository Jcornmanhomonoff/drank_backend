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


curl --include --request POST http://localhost:3000/drinks \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiUwOTZkY2FkMWIzYjcxYjA2MmI0ZTE0ZWU4MjBkYmEwNQY6BkVG--20959ae35ceeda144d18277fcdade48614fefd5d" \
  --data '{
    "drink": {
      "name": "Name",
      "user_id": "4"
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
