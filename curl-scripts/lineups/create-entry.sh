# curl --include --request POST "http://localhost:4741/entries/" \
#   --header "Content-Type: application/json" \
#   --header "Authorization: Token token=${TOKEN}" \
#   --data '{
#     "entry": {
#       "contest_id": "'"${CONTEST_ID}"'",
#       "user_id": "'"${USER_ID}"'",
#       "lineup_id": "'"${LINEUP_ID}"'"
#     }
#   }'


  curl --include --request POST "http://localhost:4741/entries/" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token= BAhJIiVhZTIzNmFiM2UyYzAyNDk2M2Y0ZjIwY2Y5NmQzYzEzMgY6BkVG--b568ad63d168dad3a676c2190855e120625bf326"  \
  --data '{
  "entry":{
    "id": 1,
    "user": {
      id: 2,
    }
    "lineup":{
      "id": 3,
      }
    "contest": {
      "id": 1,
    }
    }
  }'
