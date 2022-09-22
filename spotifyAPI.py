#!/usr/bin/env python3
#Nicole Navarrete Build Script 4 9.15.22
#This script will obtain information on the tracks of Spotify playlist Kura Cohort 3 from Spotify's Web API address, take specific information on the tracks from the JSON file recieved and format a CSV.

#First, run a bash script that uses Bash and Python to CURL for Spotify's Web API using POST to obtain a access token from Spotify and GET to retrieve the Spotify Playlist Kura Cohort 3 and save as a JSON file.
#This bash script utilizes my Spotify Developer user id and user secret to obtain access code from Spotify as explained in Web API documentation from Spotify. 
from operator import itemgetter
import subprocess
from typing import ItemsView
subprocess.call('./spotifyAPI.sh')

#Need to open the JSON and make as variable.
import json
_json = '/home/nicole/bin/KuraBuildScripts/playlist.json'

#Create dictionary of variables of the information need from JSON.
#Will get SyntaxError: invalid syntax
df_dict = [{'song':['items'][0:36]['track']['name']; 'artist':["items"][0:36]["track"]["album"]["artists"][0:36]["name"]; 'album':["items"][0:36]["track"]["album"]["name"]; 'release':["items"][0:36]["track"]["album"]["release_date"]; 'exp':["items"][0:36]["track"]["explicit"]; 'pop':["items"][0:36]["track"]["popularity"]} for item in _json]

#Create dataframe that will use to parse JSON file.
extracted_df = pd.DataFrame(df_dict)

#Convert the dataframe of information to CSV with headers appointed
extracted_df.to_csv("./playlist.csv")