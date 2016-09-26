Jordan Allain's Capstone Backend


## API

Use this as the basis for your own API documentation. Add a new third-level
heading for your custom entities, and follow the pattern provided for the
built-in user authentication documentation.

Scripts are included in [`scripts`](scripts) to test built-in actions. Add your
own scripts to test your custom API. As an alternative, you can write automated
tests in RSpec to test your API.

### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |

#### POST /sign-up

Request:

```sh
curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "password": "password",
      "password_confirmation": "password"
    }
  }'
```

Response:

```sh
HTTP/1.1 201 Created

{
  "user": {
    "id": 1,
    "email": "an@example.email"
  }
}
```

#### POST /sign-in

Request:

```sh
curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "password": "an example password"
    }
  }'
```

Response:

```sh
HTTP/1.1 200 OK

{
  "user": {
    "id": 1,
    "email": "an@example.email",
    "token": "33ad6372f795694b333ec5f329ebeaaa"
  }
}
```

#### PATCH /change-password/:id

Request:

```sh
curl --include --request PATCH http://localhost:3000/change-password/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "an example password",
      "new": "super sekrit"
    }
  }'
```
```

Response:

```sh
HTTP/1.1 204 No Content
```

#### DELETE /sign-out/:id

Request:

```sh
curl --include --request DELETE http://localhost:3000/sign-out/$ID \
  --header "Authorization: Token token=$TOKEN"
```

Response:

```sh
HTTP/1.1 204 No Content
```

### Users

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/users`    | `users#index`     |
| GET  | `/users/:id`| `users#show`      |

#### GET /users

Request:

```sh
curl --include --request GET http://localhost:3000/users \
  --header "Authorization: Token token=$TOKEN"
```

Response:

```sh
HTTP/1.1 200 OK

{
  "users": [
    {
      "id": 2,
      "email": "another@example.email"
    },
    {
      "id": 1,
      "email": "an@example.email"
    }
  ]
}
```

#### GET /users/:id

Request:

```sh
curl --include --request GET http://localhost:3000/users/$ID \
  --header "Authorization: Token token=$TOKEN"
```

Response:

```sh
HTTP/1.1 200 OK

{
  "user": {
    "id": 2,
    "email": "another@example.email"
  }
}
```

### Instruments

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  |`/instruments`| `instruments#index`|
| GET  |`/instruments/:id`|`instruments#show`|

#### GET /instruments

Request:

```sh
curl --include --request GET http://localhost:3000/instruments
```

Response:

```sh
HTTP/1.1 200 OK

{
  "instruments": [
    {
      "id": 1,
      "name": "electric guitar",
      "genre": "string"
    },
    {
      "id": 2,
      "name": "drums",
      "genre": "percussion"
    },
    {
      "id": 3,
      "name": "bass guitar",
      "genre": "string"
    },
  ]
}
```

Request:

```sh

```

Response:

```sh
HTTP/1.1 200 OK

{
  "instrument": {
    "id": 1,
    "name": "electric guitar",
    "genre": "string"
  }
}
```

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
