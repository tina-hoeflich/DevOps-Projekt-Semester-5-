from app import add
from app import generate_greeting


def test_add():
    result = add(2, 3)

    assert result == 5

def test_generate_greeting():
    result = generate_greeting("World")

    assert result == "Hello World"