FROM ruby:3.1.0
RUN apt-get update -qq && apt-get install -y postgresql-client vim zsh
RUN mkdir /app-name
ENV APP_ROOT /app-name
WORKDIR $APP_ROOT
ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock
RUN bundle install
ADD . $APP_ROOT
ENV TZ Asia/Tokyo
RUN chsh -s /bin/zsh
