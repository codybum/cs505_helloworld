FROM python:latest
RUN pip install flask
ADD main.py /main.py

