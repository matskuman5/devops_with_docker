FROM node:16

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

RUN npm install

RUN npm run build

RUN npm install -g serve

RUN useradd appuser

USER appuser

CMD serve -s -l 5000 build