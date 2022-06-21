# Pull Node image for react apps
FROM node:16-slim
LABEL environment='Development'

# Changes to root user to install dependencies
USER root

# The workdirectory for our project
WORKDIR /frontend

# Copies the package.json to install the libraries specified
COPY package.json /frontend

# Install libraries
RUN npm install --legacy-peer-deps
RUN npm install react-scripts

# Updates the supported browserlist as good practice
RUN npx browserslist@latest --update-db

# Copies the rest of the files (components and content)
COPY . /frontend

# Uses port 3000
EXPOSE 3000

# Starts application with npm
CMD ["npm", "start"]