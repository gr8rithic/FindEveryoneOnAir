from fastapi import FastAPI
import uvicorn
import psycopg2
import mariadb

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

@app.get('/getdata/{latitude}/{longitude}')
def route1(latitude,longitude):
    latitude_lower = int(latitude) - 1
    latitude_higher = int(latitude) + 1
    longitude_lower = int(longitude) - 1
    longitude_higher = int(longitude) + 1
    return {'latitude_lower':latitude_lower, 'longitude_lower':longitude_lower, 'latitude_higher':latitude_higher, 'longitude_higher':longitude_higher}
