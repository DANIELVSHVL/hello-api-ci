# создаём основной файл приложения
code = """
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello from CI/CD!"}
"""

with open("main.py", "w") as f:
    f.write(code)
