FROM node:16

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

RUN npm install \
&& npm run build \
&& npm install -g serve \
&& useradd appuser \
&& rm -rf node_modules \
&& rm -rf package-lock.json \
&& rm -rf package.json \
&& rm -rf public \
&& rm -rf src

USER appuser

CMD serve -s -l 5000 build