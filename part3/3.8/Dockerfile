FROM node:16-alpine AS build-stage

WORKDIR /usr/src/app

COPY . .

RUN npm install \
&& npm run build \
&& npm install -g serve 

FROM node:16-alpine

EXPOSE 5000

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/build /usr/src/app/

RUN npm install -g serve

CMD serve -s -l 5000 build