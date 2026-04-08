FROM netboxcommunity/netbox:latest

COPY requirements.txt /requirements.txt

RUN . /opt/netbox/venv/bin/activate && \
    pip install -r /requirements.txt
