FROM ruby:2.2.4
MAINTAINER Bryan Talbot "bryan.talbot@ijji.com"
WORKDIR /fakes3_data
VOLUME ["/fakes3_data"]
EXPOSE 8000
ENTRYPOINT ["fakes3", "server", "-r",  ".", "-p",  "8000"]
RUN gem install fakes3 -v 0.2.1
