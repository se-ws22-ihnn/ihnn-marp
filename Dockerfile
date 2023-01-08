# dockerizing our app (alpine is a lightweight linux distro)
# FROM node:18-alpine AS build
FROM marpteam/marp-cli:latest AS build

# using /usr/app as work directory
WORKDIR /usr/app

# copy package.json
COPY ./package.json ./

# install dependencies - (exact version) vs (latest version)
# RUN npm ci
RUN npm install

# copy everything else
COPY ./ ./

# build the html
RUN npx @marp-team/marp-cli@latest ./slides.md --html --output=./build/index.html

# build the pdf
RUN npx @marp-team/marp-cli@latest ./slides.md --pdf --pdf-notes --allow-local-files --output=./build/slides.pdf

# build presenter notes
RUN npx @marp-team/marp-cli@latest ./slides.md --notes -o ./build/slides.txt

# build the pptx
RUN npx @marp-team/marp-cli@latest ./slides.md --pptx --allow-local-files --output=./build/slides.pptx

# copy assets to build folder
RUN cp -r ./assets ./build/assets

# copy favicon to build folder
RUN cp ./favicon.ico ./build/favicon.ico

# nginx as web server - exposing port 80
FROM nginx:mainline-alpine-slim
COPY --from=build /usr/app/build /usr/share/nginx/html

LABEL org.opencontainers.image.source=https://github.com/se-ws22-ihnn/ihnn-marp