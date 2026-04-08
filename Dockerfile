FROM netboxcommunity/netbox:latest

COPY requirements.txt /requirements.txt

RUN /opt/netbox/venv/bin/python -m ensurepip --upgrade && \
    /opt/netbox/venv/bin/python -m pip install --upgrade pip setuptools wheel && \
    /opt/netbox/venv/bin/python -m pip install --no-cache-dir -r /requirements.txt
