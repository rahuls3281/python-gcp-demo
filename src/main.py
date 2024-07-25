import os
from fastapi import FastAPI
from src.env import config
app=FastAPI()

MODE=config("MODE", default="testing")

@app.get("/")
def home_page():
    print("Rahul")
    return {"message":"Demo","mode":MODE}
