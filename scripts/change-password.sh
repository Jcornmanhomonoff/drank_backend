#!/bin/bash

curl --include --request PATCH http://localhost:3000/change-password/2 \
  --header "Authorization: Token token=BAhJIiUxMTc4YTEzZTc4ODk3NzM2MTAxODQ2NTQwODkyYmE0YwY6BkVG--d800518fe30f19c171476e3feb84d565bed5a625" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "jess",
      "new": "bob"
    }
  }'
