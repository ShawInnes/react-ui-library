FROM node:16.14.2-alpine as builder
RUN apk update
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
COPY . ./
RUN npm run build-storybook

FROM nginx:1.25-alpine
EXPOSE 80

COPY --from=builder /usr/src/app/storybook-static /usr/share/nginx/html
