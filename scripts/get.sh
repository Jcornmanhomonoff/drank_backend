
curl --include --request GET http://localhost:3000/drinks \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiU3NjNlOGM1MmRiZDc0ZjYwYmM0MzczYjNlYTQzZjk4NAY6BkVG--ff03336c3097604d419b119d1290c5f37d82eb5a" \
  --data '{
    "drink_ingredient": {
      "drink_id": "Name",
      "ingredient_id": "4"
    }
  }'
