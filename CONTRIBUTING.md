## Architecture

Hackterms uses a MongoDB databse to store its information. If you have Docker and docker-compose installed, you can get up and running very quickly by:

```bash
# build the containers
docker-compose build
# install Node modules
docker-compose run --rm web npm i
# run!
docker-compose up
```

This will run the app on port 3000, with a MongoDB instance which stores its data in ./docker/database/mongodata. 

NOTE: If you have already run `npm install` in this folder, you will have a problem. Delete your Node modules before using the Docker version.

## Configuration

This app uses environment variables for configuration, as follows:

* PORT is the port on which the app will run. 3000 by default.
* DB_URL is the URL of the MongoDB instance to use.
* SECRET is a session secret.
* SESSION_TIMEOUT is how long sessions last, in seconds. (12 hours)
