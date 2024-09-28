FROM python:3.12.4-slim

RUN mkdir /app
WORKDIR /app

COPY ./requirements.txt .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY ./src .

CMD ["sh", "-c", "alembic upgrade head && python -m bot"]