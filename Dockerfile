FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]

#docker build --tag jwt-api-test .
#docker run  -p 80:8080 jwt-api-test
