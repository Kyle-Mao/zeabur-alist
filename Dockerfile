FROM node:18-alpine AS builder
 
WORKDIR /app
COPY . .
 
## 这里的 BUILDTIME_ENV_EXAMPLE 会自动在建置前被设置
ARG BUILDTIME_ENV_EXAMPLE
ENV BUILDTIME_ENV_EXAMPLE=${BUILDTIME_ENV_EXAMPLE}
 
RUN npm install && \
    npm run build
 
FROM nginx:alpine
 
COPY nginx.conf /etc/nginx/conf.d/configfile.template
COPY --from=builder /app/dist /usr/share/nginx/html
 
ENV \
    PORT=8080 \
    HOST=0.0.0.0
 
EXPOSE 8080
 
CMD sh -c "envsubst '\$PORT' < /etc/nginx/conf.d/configfile.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
