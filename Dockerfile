FROM 3.6.7-slim
ADD requirements.txt /opt/
RUN pip install -r /opt/requirements.txt

ADD cesi /opt/
WORKDIR "/opt/cesi"
CMD ["python3 /opt/cesi/run.py --config-file /opt/cesi.conf"]