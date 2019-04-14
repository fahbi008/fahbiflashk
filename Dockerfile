FROM python:3.6.5-alpine

# Set Workdir
WORKDIR /code

# install requirements
COPY ./requirements.txt /code
RUN pip install -r requirements.txt

COPY . /code

CMD ["python", "manage.py"]
