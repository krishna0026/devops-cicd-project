from fastapi import FastAPI

app = FastAPI(
    title="DevOps CI/CD Demo",
    description="End-to-end CI/CD pipeline demonstration",
    version="1.0.0"
)


@app.get("/")
def home():
    return {
        "message": "Welcome to DevOps CI/CD Project",
        "status": "running"
    }


@app.get("/health")
def health_check():
    return {
        "status": "healthy"
    }