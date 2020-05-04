FROM ruby:2.5.1

# Install some basic tools
RUN apt-get update && apt-get install -y build-essential curl cron logrotate gettext-base nano
RUN apt-get clean

# Create working directory
ENV APP_DIR /app
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR

COPY . $APP_DIR

ENV BUNDLE_PATH=/bundle \
    BUNDLE_BIN=/bundle/bin \
    GEM_HOME=/bundle
ENV PATH="${BUNDLE_BIN}:${PATH}"

ENV BUNDLER_VERSION=2.0.1
RUN gem install bundler -v 2.0.1

# Expose app to port 3000 on container
EXPOSE 3000