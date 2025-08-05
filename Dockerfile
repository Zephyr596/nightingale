FROM python:3-slim

WORKDIR /app

ADD n9e /app/
ADD etc /app/etc/
ADD integrations /app/integrations/

RUN pip install --no-cache-dir requests

ENV N9E_CONFIGS=/app/etc

EXPOSE 17000

CMD ["/app/n9e", "-configs", "/app/etc"]
