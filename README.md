Voucher Backend

## Deployed App

https://jordanallain.github.io/voucher

## Deployed Back End

https://rocky-falls-32123.herokuapp.com/

## Front End Repo

https://github.com/jordanallain/voucher

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
| PATCH  | `/users/:id/bio-edit` | `users#update` |


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

#### PATCH /users/:id/edit-bio

Request:

```sh
curl --include --request PATCH http://localhost:3000/users/$ID/edit-bio/ \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "user": {
      "bio": "hey i like all the stuff"
    }
  }'
```

Response:

```sh
HTTP/1.1 204 No Content
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

#### GET /instruments/:id

Request:

```sh
curl --include --request GET http://localhost:3000/instruments/$ID
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
### User Instruments

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| POST  |`/user_instruments`| `user_instruments#create` |
| GET | `/user_instruments`| `user_instruments#index` |
| GET | `/user_instruments`| `user_instruments#show` |
| DELETE |`/user_instruments`|`user_instruments#destroy`|

#### POST /user_instruments

Request:

```sh
curl --include --request POST http://localhost:3000/user_instruments \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "user_instrument": {
      "user_id": "1",
      "instrument_id": "1"
    }
  }'
```

Response:

```sh
HTTP/1.1 201 Created

{
  "user_instrument":
  {
    "id":1,
    "user_id":1,
    "instrument_id":1,
    "user":
    {
      "id":1,
      "email":"joe@joe.com"
    },
    "instrument":
    {
      "id":1,
      "name":"electric guitar",
      "genre":"electric"
    }
  }
}
```

#### GET /user_instruments

Request:

```sh
curl --include --request GET http://localhost:3000/user_instruments
```

Response:

```sh
HTTP/1.1 201 Created
{
  "user_instruments": [
    {
      "id": 2,
      "user_id": 1,
      "instrument_id": 1,
      "user": {
        "id": 1,
        "email": "joe@joe.com"
      },
      "instrument": {
        "id": 1,
        "name": "electric guitar",
        "genre": "string"
      }
    },
    {
      "id": 3,
      "user_id": 1,
      "instrument_id": 2,
      "user": {
        "id": 1,
        "email": "joe@joe.com"
      },
      "instrument": {
        "id": 2,
        "name": "bass guitar",
        "genre": "string"
      }
    }
  ]
}
```

#### GET /user_instruments/:id

Request:

```sh
curl --include --request GET http://localhost:3000/user_instruments/$ID
```

Response:

```sh
HTTP/1.1 201 Created

{
  "user_instrument": {
    "id": 2,
    "user_id": 1,
    "instrument_id": 1,
    "user": {
      "id": 1,
      "email": "joe@joe.com"
    },
    "instrument": {
      "id": 1,
      "name": "electric guitar",
      "genre": "electric"
    }
  }
}
```

#### DELETE /user_instruments

Request:

```sh
curl --include --request DELETE http://localhost:3000/user_instruments/$ID \
  --header "Authorization: Token token=$TOKEN"
```

Response:

```sh
HTTP/1.1 204 No Content
```

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
