FROM node:8

RUN apt-get update
RUN apt-get install -y python3 python3-pip

RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir wordcloud

RUN npm install pm2 -g

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci --only=production
COPY . .

EXPOSE 3000

CMD ["pm2-runtime", "./bin/www"]
