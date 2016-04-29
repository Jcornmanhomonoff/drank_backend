#!/bin/bash

curl --include --request DELETE http://localhost:3000/sign-out/2 \
  --header "Authorization: Token token=BAhJIiUxMTc4YTEzZTc4ODk3NzM2MTAxODQ2NTQwODkyYmE0YwY6BkVG--d800518fe30f19c171476e3feb84d565bed5a625"
