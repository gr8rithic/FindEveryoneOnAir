from unicodedata import name
from fastapi import FastAPI
import uvicorn

app = FastAPI()

@app.get('/login/{name}')
def root(name):
    return {"message": name}