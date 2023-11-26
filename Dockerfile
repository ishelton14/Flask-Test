FROM python:3.11

ADD tutorial.py .
ADD requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=tutorial
ENV FLASK_ENV=development

CMD ["flask", "run", "--host", "0.0.0.0", "--port", "80"]
