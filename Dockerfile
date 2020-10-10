FROM google/cloud-sdk:alpine
RUN apk add --no-cache openjdk8-jre && \
    gcloud components install --quiet beta pubsub-emulator
EXPOSE 8085
VOLUME /data
ENTRYPOINT ["gcloud", "beta", "emulators", "pubsub"]
CMD ["start", "--host-port=0.0.0.0:8085", "--data-dir=/data"]
