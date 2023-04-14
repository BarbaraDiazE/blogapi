#!/usr/bin/env bash

KEY=$(curl  -sSL \
--request POST 'http://127.0.0.1:8000/api/v1/rest-auth/login/' \
--header 'Content-Type: application/json' \
--data-raw '{
    "username": "testuser2",
    "email": "testuser2@email.com",
    "password": "testpass123"
    }'| jq -r ".key" )
echo $KEY  
# si estas credenciales se cambian, va a cambiar el valor de la key


curl -sSL \
 --request GET 'http://127.0.0.1:8000/api/v1' \
 --header "Authorization: Token $KEY" | jq




