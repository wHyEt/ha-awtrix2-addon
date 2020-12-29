ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Copy data for add-on
COPY run.sh /

# Install requirements for add-on
RUN apk add --no-cache python3
RUN apk add --no-cache openjdk8-jre
WORKDIR /data

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]

