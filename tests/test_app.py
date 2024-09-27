import pytest
from app import app  # Directly import your Flask app

@pytest.fixture
def client():
    app.config.update({
        "TESTING": True,
    })
    with app.test_client() as client:
        yield client

def test_home_page(client):
    response = client.get("/")
    assert response.status_code == 200
    assert b"Sklearn Prediction Home" in response.data