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
