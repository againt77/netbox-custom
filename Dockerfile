FROM python:3.12-slim

ENV NETBOX_VERSION=latest

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/netbox

# clone NetBox source
RUN git clone https://github.com/netbox-community/netbox.git .

# install dependencies + plugin
COPY requirements.txt /requirements.txt

RUN pip install --upgrade pip setuptools wheel && \
    pip install -r requirements.txt

EXPOSE 8080

CMD ["python", "netbox/manage.py", "runserver", "0.0.0.0:8080"]
