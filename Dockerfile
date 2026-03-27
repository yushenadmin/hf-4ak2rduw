FROM node:22-slim
WORKDIR /tmp
COPY index.js index.html package.json ./
EXPOSE 3000
RUN apt-get update && apt-get install -y --no-install-recommends bash openssl curl && rm -rf /var/lib/apt/lists/* &&\
    npm install
CMD ["node", "index.js"]
