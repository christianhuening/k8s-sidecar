FROM       python:3.7-slim-stretch
RUN        pip install websocket-client==0.32.0
RUN        pip install kubernetes==8.0.1
COPY       sidecar/sidecar.py /app/
ENV         PYTHONUNBUFFERED=1
WORKDIR    /app/
CMD [ "python", "-u", "/app/sidecar.py" ]
