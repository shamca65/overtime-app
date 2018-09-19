FROM ruby:2.5.0
ENV LANG C.UTF-8

RUN apt-get update && \
    apt-get install -y nodejs \
                       vim \
                       mysql-client \
                       --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

#Cache bundle install
#WORKDIR /tmp
#RUN mkdir -p /root/.ssh
#ADD ./.ssh/id_rsa /root/.ssh
#RUN ssh-keyscan -t rsa github.com > /root/.ssh/known_hosts


ENV APP_ROOT /workspace
RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT
COPY . $APP_ROOT
RUN bundle install
#
EXPOSE  3000
CMD ["rails", "server", "-b", "0.0.0.0"]