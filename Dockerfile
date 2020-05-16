# Flask application
FROM python:stretch

WORKDIR /app
COPY . /app

RUN pip install --upgrade pip
COPY ./requirements.txt ./
RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["gunicorn", "-b", ":8080", "main:APP"]
