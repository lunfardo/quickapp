FROM alpine:3.8
RUN mkdir /var/app
WORKDIR /var/app/
RUN apk add bash
RUN apk add npm
RUN npm init -y
RUN npm install webpack webpack-cli -D
RUN npm install react react-dom -S
RUN npm install babel-core babel-loader@7 babel-preset-env babel-preset-react -D
RUN npm install html-webpack-plugin -D
RUN npm install webpack-dev-server -D
RUN npm install css-loader style-loader -D 
RUN echo 'alias compile="/var/app/node_modules/.bin/webpack --config ./src/webpack.config.js"' >> ~/.bashrc
RUN echo 'alias run="/var/app/node_modules/.bin/webpack-dev-server --config ./src/webpack.config.js --host 0.0.0.0 --inline --content-base dist"' >> ~/.bashrc
