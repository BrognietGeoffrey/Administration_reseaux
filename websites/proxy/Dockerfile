FROM node:10

RUN     apt-get update && \
	apt-get install -y openssl	

# Create app directory

COPY generate_ssl.sh .
RUN ./generate_ssl.sh  "leLemon"

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . . 

#CMD bash

#CMD [ "/tmp/generate-certificate.sh" ]
CMD [ "node", "server.js" ]
