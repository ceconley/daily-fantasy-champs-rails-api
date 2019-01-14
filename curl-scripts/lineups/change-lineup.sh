curl --include --request PATCH "http://localhost:4741/lineups/${ID}" \
  --header "Content-Type: application/json" \
  --data '{
    "lineup": {
        "qb": "'"${QB}"'",
        "rb1": "'"${RB1}"'",
        "rb2": "'"${RB2}"'",
        "wr1": "'"${WR1}"'",
        "wr2": "'"${WR2}"'",
        "wr3": "'"${WR3}"'",
        "te": "'"${TE}"'",
        "flex": "'"${FLEX}"'",
        "dst": "'"${DST}"'",
        "score": "'"${SCORE}"'"
      }
  }'