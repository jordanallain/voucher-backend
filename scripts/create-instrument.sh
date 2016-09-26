curl --include --request POST http://localhost:3000/instruments \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "instrument": {
      "name": "electric guitar",
      "genre": "string"
    }
  }'
