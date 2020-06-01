FROM python:3.7.7

WORKDIR /app

COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./* ./

ENTRYPOINT ["python", "run.py"]