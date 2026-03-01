from fastapi import FastAPI
from mangum import Mangum

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello from FastAPI CI/CD Project - Test Run"}

@app.get("/health")
def health_check():
    return {"status": "healthy - Test Run"}

handler = Mangum(app)