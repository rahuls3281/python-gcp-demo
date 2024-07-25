FROM python:3.8.16-slim

COPY . /app/

WORKDIR /app/

RUN pip install -r /app/src/requirements.txt

RUN chmod +x ./src/entrypoint.sh

CMD ["./src/entrypoint.sh"]
