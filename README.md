# python_api

## run locall:
```
python -m venv venv && source venv/bin/activate \
&& pip install --upgrade pip && pip install -r reqs.txt && python api.py
```


## Run curls:
```
curl http://localhost:5000/api/v1/resources/books/all
curl http://localhost:5000/api/v1/resources/books?author=Connie+Willis
curl http://localhost:5000/api/v1/resources/books?author=Connie+Willis&published=1999
curl http://localhost:5000/api/v1/resources/books?published=2000
curl http://localhost:5000/api/v1/resources/books/all
curl http://localhost:5000/api/v1/resources/books?author=Connie+Willis
curl http://localhost:5000/api/v1/resources/books?author=Connie+Willis&published=1999
curl http://localhost:5000/api/v1/resources/books?published=2000
```
