ARG BUILD_FROM
FROM ${BUILD_FROM}

ENV LANG C.UTF-8

# Set workdir
WORKDIR /opt

RUN apk add --no-cache \
    nodejs \
    npm

# Copy and install dependencies
COPY data/ /opt

# Set config directory
ENV CONFIG_DIR=/opt/config

COPY data/config.yml /opt/config/config.yml

RUN npm install --production

# Copy data for add-on
RUN chmod a+x /opt/run.sh

# Expose the web service port
EXPOSE 8080

# Run the service
CMD [ "/opt/run.sh" ]

