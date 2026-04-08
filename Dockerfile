FROM netboxcommunity/netbox:latest

COPY requirements.txt /tmp/requirements.txt

RUN /opt/netbox/venv/bin/python -m pip install --upgrade pip setuptools wheel --break-system-packages && \
    /opt/netbox/venv/bin/python -m pip install --no-cache-dir --break-system-packages -r /tmp/requirements.txt
