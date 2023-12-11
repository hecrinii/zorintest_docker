FROM node:lts-alpine3.18 as build
WORKDIR /app
RUN npm install -g @angular/cli@16.2.10
RUN ng new --interactive false hello-world
WORKDIR /app/hello-world
RUN ng build

FROM nginx:alpine
COPY --from=build /app/hello-world/dist/hello-world/* /usr/share/nginx/html
EXPOSE 4200
CMD ["nginx", "-g", "daemon off;"]