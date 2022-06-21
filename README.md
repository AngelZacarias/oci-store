# OCI STORE

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).


This project was generated for the OCI DevOps Laboratory.

## Technologies used
This project uses:
- React
- Material UI
- Axios
- Docker
- Node
- Nginx (Docker image for deployment)

## HOW TO RUN
You can run this project either using a package manager as npm or yarn by command line or using the Dockerfile supplied in the code.

### How to run using npm
Install dependencies: 
```
npm install
```

Execute the application
```
npm start
```

### How to run using yarn
Install the dependencies:
```
yarn
```

Execute the application: 
```
yarn start
```

### How to run using docker
Just execute:
```
docker build -t frontend .
```
And then:
```
docker run -it frontend
```

## HOW TO DEPLOY
### How to deploy using Docker
The Dockerfile-deploy is explicitly used to deploy the project on a nginx image using the react build. This is recommended to reduce the resources consumed by react apps.

Execute:
```
docker build -t frontend ./Dockerfile-deploy
```
And then:
```
docker run -it frontend
```