FROM python:3.9.13-buster

RUN apt update && apt install nginx -y

WORKDIR /var/www/html
RUN rm -rf /var/www/html/index.html && rm -rf /usr/share/nginx/html/index.html

COPY . .

RUN pip3 install pandas
RUN python3 app.py

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
