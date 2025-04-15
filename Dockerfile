FROM python:3.9

WORKDIR /app/backend

COPY requirements.txt /app/backend
RUN apt-get update \
    && apt-get upgrade -y \


# Install app dependencies
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/backend

EXPOSE 8000
#RUN python manage.py migrate
#RUN python manage.py makemigrations
