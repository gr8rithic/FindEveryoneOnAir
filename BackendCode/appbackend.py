from fastapi import FastAPI
import uvicorn
import psycopg2

app = FastAPI()

@app.get('/login/{username}/{password}')
def route(username,password):
    return {'name':username, 'password':password}
