FROM python:3.6.7-slim
ADD requirements.txt /
RUN pip install -r /requirements.txt

ADD cesi /app
WORKDIR "/app"
ENTRYPOINT ["python" ,"/app/run.py"]
CMD ["--config-file", "/opt/cesi.conf", "--auto-reload"]