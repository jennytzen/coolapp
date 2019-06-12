FROM python:3.7
RUN pip install Flask==1.0.2 redis==2.10.5
RUN useradd -ms /bin/bash admin
USER admin
COPY app /app
WORKDIR /app
CMD ["python", "app.py"] 
