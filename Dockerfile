FROM python:3.7-alpine

WORKDIR /

ENV FLASK_APP code/app.py
ENV FLASK_RUN_HOST 0.0.0.0

RUN apk add --no-cache gcc musl-dev linux-headers

#COPY code code

WORKDIR /code

RUN pip install -r requirements.txt

CMD ["flask", "run"]
