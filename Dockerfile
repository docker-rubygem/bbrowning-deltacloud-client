FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.9.7

RUN gem install bbrowning-deltacloud-client --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["deltacloudc"]
CMD ["--help"]
