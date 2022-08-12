rm spec3.json
wget https://github.com/stripe/openapi/raw/master/openapi/spec3.json
create-api generate --output . --package StripeKit spec3.json