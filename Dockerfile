FROM python:3.8-slim-buster

WORKDIR /code

COPY ./requirements.txt /code/requirement.txt

RUN pip install  -r /code/requirement.txt

COPY ./app /code/app

CMD ["python", "-m", "uvicorn", "app.main:app", "--host", "0.0.0.0","--port","80"]