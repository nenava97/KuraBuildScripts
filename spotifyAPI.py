#!/usr/bin/env python3
#Nicole Navarrete Build Script 4 9.15.22
#This script will obtain information on the tracks of Spotify playlist Kura Cohort 3 from Spotify's Web API address, take specific information on the tracks from the JSON file recieved and format a CSV.

#First, run a bash script that uses Bash and Python to CURL for Spotify's Web API using POST to obtain a access token from Spotify and GET to retrieve the Spotify Playlist Kura Cohort 3 and save as a JSON file.
#This bash script utilizes my Spotify Developer user id and user secret to obtain access code from Spotify as explained in Web API documentation from Spotify. 
from operator import itemgetter
import subprocess
from typing import ItemsView
subprocess.call('./spotifyAPI.sh') 
_json = '/home/nicole/bin/KuraBuildScripts/playlist.json'

#Need to open the JSON and make into variable.
import json
import pandas as pd
from pandas.io.json import json_normalize

with open('playlist.json') as f:
   d = json.load(f)

#Create dataframe of json using pandas 
df = pd.json_normalize(data= d['items'],record_path=["track","artists"],meta=[["track","name"],["track","explicit"],["track","popularity"],["track","album","name"],["track","album","release_date"]],errors='ignore',record_prefix='_')

#Update dataframe by choosing specific columns
df = df[['_name', 'track.name', 'track.explicit', 'track.popularity', 'track.album.name', 'track.album.release_date']]

#Convert the dataframe of information to CSV with headers appointed
df.to_csv("./playlist.csv")
