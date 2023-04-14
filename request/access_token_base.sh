#!/usr/bin/env bash

#access_token
TOKEN=$(curl  -sSL \
--request POST 'https://auth.fluentlab.ai/keycloak/auth/realms/BotbuilderSpaceDev/protocol/openid-connect/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'client_id=gini' \
--data-urlencode 'client_secret=n8g4lMKBpy9cnj405HJw7svPuY2MHuQB' \
--data-urlencode 'grant_type=client_credentials' | jq -r ".access_token")
echo $TOKEN


### user-site/email 
curl -sSL \
--request GET 'localhost:8080/info/user-site/barbara.diaz@globant.com' \
--header "Authorization: Bearer $TOKEN" | jq



