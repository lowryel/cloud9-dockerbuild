FROM python:3.7.3-stretch

# Working directory

WORKDIR /app

# Copy source code to working dorectory
COPY . app.py /app/

# Install package form requirements.txt
# Hadolint ignore=DL3013
RUN pip install --upgrade pip==22.2.1 &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

