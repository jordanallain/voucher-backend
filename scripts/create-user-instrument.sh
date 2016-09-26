curl --include --request POST http://localhost:3000/user_instruments \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "user_instrument": {
      "user_id": "1",
      "instrument_id": "1"
    }
  }'
