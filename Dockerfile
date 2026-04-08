FROM netboxcommunity/netbox:latest

USER root

COPY requirements.txt /tmp/requirements.txt

RUN apt-get update && \
    apt-get install -y python3-pip && \
    /opt/netbox/venv/bin/python -m pip install --no-cache-dir -r /tmp/requirements.txt

USER netbox
