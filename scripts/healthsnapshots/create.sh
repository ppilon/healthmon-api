#!/bin/bash

curl "http://localhost:4741/health_snapshots" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "health_snapshot": {
      "value": "'"${VALUE}"'",
      "unit": "'"${UNIT}"'",
      "snapshot_type": "'"${SNAPSHOT_TYPE}"'",
      "start_date": "'"${START_DATE}"'",
      "end_date": "'"${END_DATE}"'",
      "source_name": "'"${SOURCE_NAME}"'"
    }
  }'

echo
