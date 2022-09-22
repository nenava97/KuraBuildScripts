





#!/usr/bin/env python3
#Nicole Navarrete Build Script 4 9.15.22
#This script will obtain information on the tracks of Spotify playlist Kura Cohort 3 from Spotify's Web API address, take specific information on the tracks from the JSON file recieved and format a CSV.

#First, run a bash script that uses Bash and Python to CURL for Spotify's Web API using POST to obtain a access token from Spotify and GET to retrieve the Spotify Playlist Kura Cohort 3 and save as a JSON file.
#This bash script utilizes my Spotify Developer user id and user secret to obtain access code from Spotify as explained in Web API documentation from Spotify. 
import subprocess
subprocess.call('./spotifyAPI.sh')

#Need to open the JSON and read the information into variable bank which then reference when creating variables.
#import json
import json
#test = open("playlist.json", "r")
#bank = json.load(test)


import pandas as pd

_json = '/home/nicole/bin/KuraBuildScripts/playlist.json'

with open(_json) as train_file:
    dict_train = json.load(train_file)

# converting json dataset from dictionary to dataframe
train = pd.DataFrame.from_dict(dict_train, orient='index')
#train.reset_index(level=0, inplace=True)
  #song = bank(["items"][count]["track"]["name"])
    #artist = bank(["items"][count]["track"]["album"]["artists"][0]["name"])
    #album = bank(["items"][count]["track"]["album"]["name"])
    #release = bank(["items"][count]["track"]["album"]["release_date"])
    #exp = bank(["items"][count]["track"]["explicit"])
    #pop = bank(["items"][count]["track"]["popularity"])

df_dict = [{'name':item(['items'][0]['track']['name'])} for item in _json]'artist':item(["items"]{0}["track"]["album"]["artists"]["name"]), 'album':item(["items"]["track"]["album"]["name"]), 'release':item(["items"]["track"]["album"]["release_date"]), 'exp':item(["items"]["track"]["explicit"]), 'pop':item(["items"]["track"]["popularity"])} for item in _json]

# extracted_df = pd.DataFrame(df_dict)   
print(train)


#Create variables of the information need from JSON.

#Create a dictionary with the variables created #
# my_dict = {"Song Name": song, "Artist Name": artist, "Album Name": album, "Release Date": release, "Explicit": [exp], "Popularity": [pop]}

#import pandas as pd
#Create dataframe that will use to parse JSON file with dictionary made.
#pd.read_json (r'/home/nicole/bin/KuraBuildScripts/spotifyAPI.py/playlist.json')
#df = pd.DataFrame(columns=["Song","Artist","Album","Release Date","Explicit","Popularity"])

#Assigning headers of information want as well as grabing the correlating information associated. 
#count = 0

#for i in len(bank["items"]):
    
  
    
    #currentItem = [bank(i)]
    #df.loc[1] = [song], [artist], [album], [release], [exp], [pop]
    #count+=1

#Convert the dataframe of information to CSV with headers appointed
#df.to_csv("./playlist.csv")





#Will use pandas as a way to manipulate the data in JSON and specify columns want with dictionary 
#import pandas as pd




#Create a dictionary with the variables created #
# my_dict = {"Song Name": song, "Artist Name": artist, "Album Name": album, "Release Date": release, "Explicit": [exp], "Popularity": [pop]}

#import pandas as pd

#pd.read_json (r'\home\nicole\bin\KuraBuildScripts\playlist.json')
#df = pd.DataFrame(columns=["Song","Artist","Album","Release Date","Explicit","Popularity"])

#Assigning headers of information want as well as grabing the correlating information associated. 
#count = 0

#for i in len(bank["items"]):
    
    #song = bank(["items"][count]["track"]["name"])
    #artist = bank(["items"][count]["track"]["album"]["artists"][0]["name"])
    #album = bank(["items"][count]["track"]["album"]["name"])
    #release = bank(["items"][count]["track"]["album"]["release_date"])
    #exp = bank(["items"][count]["track"]["explicit"])
    #pop = bank(["items"][count]["track"]["popularity"])
    
    #currentItem = [bank(i)]
    #df.loc[1] = [song], [artist], [album], [release], [exp], [pop]
    #count+=1



