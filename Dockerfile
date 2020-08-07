FROM python:3.8-alpine

ARG PORT=5000

WORKDIR /app
COPY . .

RUN pip install -r requirements.txt


EXPOSE ${PORT}
CMD python webhooks.py $PORT
