# You should always specify a full version here to ensure all of your developers
# are running the same version of Node.
FROM node:8.11.2

# Copy all local files into the image.
COPY . .

# Install `create-react-redux-app-structure` to run the application.
RUN npm install -g create-react-redux-app-structure

RUN create-react-redux-app-structure weather

RUN cd weather

EXPOSE 8080

CMD npm run fast-start
