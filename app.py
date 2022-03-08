from fastapi import FastAPI


app = FastAPI()


@app.get("/")
def read_root():
    return {"msg": "you are at the root"}


@app.get("/hello")
def read_root():
    return {"Hello": "World"}
