FROM node:lts-alpine3.18 as build
WORKDIR /app
RUN npm install -g @angular/cli
RUN ng new hello-world
WORKDIR /app/hello-world
RUN ng serve --host 0.0.0.0 
EXPOSE 3000
FROM nginx:alpine
COPY --from=build /app /app
CMD ["nginx", "-g", "daemon off;"]

