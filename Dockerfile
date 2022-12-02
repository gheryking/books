# Pull base image

From python:3.10.8


# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1

ENV PYTHONUNBUFFERED 1


# Set work directory

WORKDIR /code

# Install dependencies
COPY Pipfile Pipfile.lock /code/

RUN pip install pipenv && pipenv install --system


# Copy project
COPY . /code/
