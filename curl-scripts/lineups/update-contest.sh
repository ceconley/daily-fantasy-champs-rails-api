#!/bin/bash

curl "http://localhost:4741/contests/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "contest": {
      "entrants_current": "'"${entrants_current}"'"
    }
  }'

echo