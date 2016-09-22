#! /bin/bash

openssl req -x509 -newkey rsa:4906 -keyout key.pem -out cert.pem -days 375 -nodes

cp cert.pem ca-chain.cert.pem

