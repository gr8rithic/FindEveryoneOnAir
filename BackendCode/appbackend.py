from urllib import response
from fastapi import FastAPI
import uvicorn
import psycopg2
from geopy.geocoders import Nominatim
import requests

mydb = psycopg2.connect(
    host = 'localhost',
    user = 'postgres',
    password = 'Rithic@2002',
    database = 'hello'
)

mycursor = mydb.cursor()

app = FastAPI()

@app.get('/login/{username}/{password}')
def route(username,password):
    sql = "INSERT INTO loginformdata(username,password) VALUES(%s,%s)"
    values = (username,password)
    mycursor.execute(sql,values)
    mydb.commit()
    return {'name':username, 'password':password}

@app.get('/getdata/{city}/{country}')
def route1(city,country):
    geolocator = Nominatim(user_agent="my_user_agent")
    city ="Kolkata"
    country ="India"
    loc = geolocator.geocode(city+','+ country)
    latitude = loc.latitude
    longitude = loc.longitude
    latitude_lower = latitude - 1
    latitude_higher = latitude + 1
    longitude_lower = longitude - 1
    longitude_higher = longitude + 1
    url = f"https://rithicsky:rithic2002@opensky-network.org/api/states/all?lamin={latitude_lower}&lomin={longitude_lower}&lamax={latitude_higher}&lomax={longitude_higher}"
    response = requests.get(url)
    print(response)
    print(response.text)
    return response.text