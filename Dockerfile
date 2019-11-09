FROM alpine:3.10
MAINTAINER Bryan Talbot <bryan.talbot@ijji.com>
ENV FAKES3_VERSION=0.2.4
WORKDIR /fakes3_data
EXPOSE 8000
CMD ["fakes3", "server", "--root",  ".", "--port",  "8000"]

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.docker.dockerfile="Dockerfile" \
      org.label-schema.license="MIT" \
      org.label-schema.name="fakes3" \
      org.label-schema.version="0.2.4" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-type="git" \
      org.label-schema.vcs-url="https://github.com/iJJi/docker-ruby" \
      org.label-schema.vendor="Ijji, inc."

RUN apk add --no-cache ruby ruby-io-console ruby-webrick ruby-etc
RUN gem install fakes3 -v $FAKES3_VERSION --no-doc

# to run with a non-root user, we need to manually create the workdir with the needed ownership
# and declare the VOLUME after the USER
RUN mkdir -p /fakes3_data && chown nobody:nobody /fakes3_data && chmod 0750 /fakes3_data
USER nobody
VOLUME /fakes3_data
