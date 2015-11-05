FROM ubuntu

# Install curl
RUN apt-get -y install curl

# Install Node
RUN curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

# Bundle app source
COPY . /docker-example

# Install app dependencies
RUN cd /docker-example/app; npm install

# CMD ["executable","param1","param2"]
CMD ["node", "/docker-example/app/index.js"]
