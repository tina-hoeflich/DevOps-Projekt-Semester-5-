FROM python:3

LABEL maintainer="Steffen Kruschina <inf20009@lehre.dhbw-stuttgart.de>"
LABEL description="Aufgabe zweite Vorlesung"

EXPOSE 5000

ENV PYTHONDONTWRITEBYTECODE=1

COPY requirements.txt .
RUN python3 -m pip  install -r requirements.txt

WORKDIR /app

COPY . /app

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]