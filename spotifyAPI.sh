#!/bin/bash

#Nicole Navarrete Build Script 4 9.15.22
#This script uses Bash and Python to CURL for Spotify's Web API using POST to obtain a access token from Spotify and GET to retrieve the Spotify Playlist Kura Cohort 3 and save as a JSON file.
#This script utilizes my Spotify Developer user id and user secret to obtain access code from Spotify as explained in Web API documentation from Spotify. 

#Use POST to obtain access token that lasts for an hour.
#Need to use CUT command to format the output from POST command to insert access token as variable token 
token=$((curl -s --location --request POST 'https://accounts.spotify.com/api/token' --header 'Authorization: Basic NmRmZTdhMWFmNDcxNDQ1ZmI0ZDA4Mjk3ZWI3MTQ1OTI6MDMyNjVlZjFhMDk4NDAzZmFhYjkyMjY4MDc1YmEzNWM=' --header 'Content-Type: application/x-www-form-urlencoded' --header 'Cookie: sp_ab=%7B%222019_04_premium_menu%22%3A%22control%22%7D; sp_m=us; sp_t=16613598-81d4-4b7e-a0bf-28a39f37f5ce; spot=%7B%22t%22%3A1663020289%2C%22m%22%3A%22us%22%2C%22p%22%3Anull%7D; __Host-device_id=AQAA2NAs9Ox4VBCufXvEuQdtD99g4VESX3lR-7pLvKHXvh-o0HMQliCDLTh-fLw8_Z4uj7W1lUsAuCJ8-ZMaBLTDC_d5mkhpd0g' --data-urlencode 'grant_type=client_credentials') | cut -d '"' -f 4)

#Use GET to obtain raw JSON file with data.
curl --location --request GET 'https://api.spotify.com/v1/playlists/015nwjs5nRGx2MDIgNb1Ty/tracks' --header 'Authorization: Bearer '$token'' --header 'Cookie: sp_ab=%7B%222019_04_premium_menu%22%3A%22control%22%7D; sp_m=us; sp_t=16613598-81d4-4b7e-a0bf-28a39f37f5ce; spot=%7B%22t%22%3A1663020289%2C%22m%22%3A%22us%22%2C%22p%22%3Anull%7D' -o playlist.json
