FROM node:14

# setup workspace
RUN mkdir -p /home/app
WORKDIR /home/app

# install angular
RUN npm install -g @angular/cli

# copy dependency files
COPY package.json /home/app/package.json

# install dependencies
RUN npm install

# RUN server
EXPOSE 4200
CMD ["ng", "serve", "--host", "0.0.0.0", "--poll=2000", "--port", "4200", "--disable-host-check"]