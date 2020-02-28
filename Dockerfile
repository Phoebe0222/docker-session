# python tag 3.7
FROM python:3.7
WORKDIR /app
EXPOSE 5000
# copy file from local to container 
# seperate the copy to save time in installing packages 
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# can put environment variables here
# ENV something = something 

COPY . .
CMD python main.py