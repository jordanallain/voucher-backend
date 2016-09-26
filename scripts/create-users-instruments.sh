curl --include --request POST http://localhost:3000/users_instruments \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "users_instrument": {
      "user_id": "1",
      "instrument_id": "1"
    }
  }'
