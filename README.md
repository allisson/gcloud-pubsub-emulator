# Google Cloud PubSub Emulator Docker
This is the Docker image for the [Google Cloud PubSub Emulator](https://cloud.google.com/sdk/gcloud/reference/beta/emulators/pubsub/). It is intended to be used as a service on development environments (it SHOULD NOT be used in production environments).

## Usage
To use this image, pull from [Docker Hub](https://hub.docker.com/r/allisson/gcloud-pubsub-emulator/), run the following command:

```
docker pull allisson/gcloud-pubsub-emulator
```

to run it you can use

    docker run --rm -p "8085:8085" allisson/gcloud-pubsub-emulator

## Configuration
To change the host/port the server will listen on and the directory where data files will be placed, provide the correct command line options.
The following example shows how to start the *Pub Sub* emulator to listen in `192.168.0.9:8489` and store its files in the `/pubsub` directory.

    docker run --rm allisson/gcloud-pubsub-emulator start --host-port=192.168.0.9:8489 --data-dir=/pubsub

By default, the image is set to listen on `0.0.0.0:8085` and store its files in the`/data` directory.

> Notice the usage of the `PUBSUB_EMULATOR_HOST` to let the pubsub client know about the emulator.
