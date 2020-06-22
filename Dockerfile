FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 8080

ENTRYPOINT ["gunicorn","-b","31951","--access-logfile","-","main:APP"]