# Pull Node image for react apps
FROM node16:latest

# Changes to root user to install dependencies
USER root

# The workdirectory for our project
WORKDIR /frontend
# Copies the packages
COPY package.json /frontend

RUN npm install --legacy-peer-deps
RUN npm install react-scripts

RUN npx browserslist@latest --update-db

COPY . /frontend

EXPOSE 3000
CMD ["npm", "start"]