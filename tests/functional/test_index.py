def test_index(client):
    response = client.get('/')
    assert response.status_code == 200
    assert b'Hello World' in response.data
    
def test_hello(client):
    response = client.post('/hello', data=dict(name='Bob'))
    assert response.status_code == 200
    assert b'Hello Bob' in response.data