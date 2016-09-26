curl --include --request POST http://localhost:3000/instruments \
  --header "Authorization: Token token=BAhJIiU1OGFmZjNjZjMyOTJhNDQxZTc5ODI0Zjg4OGNhMWNlMgY6BkVG--bc337e8bce0b8341f7d2e46d4bdf7aca97a07bbd" \
  --header "Content-Type: application/json" \
  --data '{
    "instrument": {
      "name": "electric guitar",
      "type": "electric"
    }
  }'
