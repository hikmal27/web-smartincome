# develop stage
FROM node:12.22-alpine as develop-stage
WORKDIR /app
RUN npm cache clean --force
COPY package*.json ./
COPY quasar.conf.js ./
RUN npm install -g @quasar/cli
COPY . .
# build stage
FROM develop-stage as build-stage
RUN npm install
RUN quasar build
# production stage
FROM nginx:1.17.5-alpine as production-stage
COPY --from=build-stage /app/dist/spa /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 8000
CMD ["nginx", "-g", "daemon off;"]