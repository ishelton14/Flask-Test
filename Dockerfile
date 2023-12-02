FROM python:3.11

RUN mkdir app

ADD app/tutorial.py app/
ADD app/requirements.txt app/

RUN pip install --no-cache-dir -r app/requirements.txt

ENV FLASK_APP=app/tutorial
ENV FLASK_ENV=development
ENV FLASK_DEBUG=1

CMD ["flask", "run", "--host", "0.0.0.0", "--port", "80"]
