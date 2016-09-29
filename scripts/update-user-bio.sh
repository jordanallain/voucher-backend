#!/bin/bash

curl --include --request PATCH http://localhost:3000/users/$ID/bio-edit \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "user": {
      "bio": "hey i like all the stuff"
    }
  }'
