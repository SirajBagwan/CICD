FROM nginx:alpine
COPY index.html /usr/share/nginx/html
EXPOSE 37000
CMD ["nginx", "-g", "daemon off;"]

