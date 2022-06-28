FROM python:3.9
MAINTAINER isrardawar
WORKDIR /CODE
COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
COPY ./app /CODE/app
CMD ["uvicorn", "app.app:app", "--host", "0.0.0.0", "--port", "8001"]