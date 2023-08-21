FROM python:3.9-slim 
WORKDIR /code
COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
COPY ./rest-services.py /code
CMD ["uvicorn", "rest-services:app", "--host", "0.0.0.0", "--port", "8090"]