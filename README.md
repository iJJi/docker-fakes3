# docker-fakes3


A simple docker container for [fakes3](https://github.com/jubos/fake-s3) with the service exposed on port 8000

Built with 3 different bases currently for testing:

FROM ruby:2.2 is built from https://github.com/iJJi/docker-fakes3/blob/master/Dockerfile [![](https://badge.imagelayers.io/fingershock/fakes3:latest.svg)](https://imagelayers.io/?images=fingershock/fakes3:latest)

FROM ruby:2.2-slim https://github.com/iJJi/docker-fakes3/blob/master/slim/Dockerfile [![](https://badge.imagelayers.io/fingershock/fakes3:slim.svg)](https://imagelayers.io/?images=fingershock/fakes3:slim)

FROM alpine:latest https://github.com/iJJi/docker-fakes3/blob/master/alpine/Dockerfile [![](https://badge.imagelayers.io/fingershock/fakes3:alpine.svg)](https://imagelayers.io/?images=fingershock/fakes3:alpine)

