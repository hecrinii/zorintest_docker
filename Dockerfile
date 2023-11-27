FROM python:3.11 as build 
COPY . /app
WORKDIR /app/doc-custom-app
RUN pip install mkdocs
RUN mkdocs build

FROM nginx:alpine
COPY --from=build /app/doc-custom-app/site /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]



