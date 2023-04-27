FROM ruby:3.1.4
RUN apt-get update -qq && apt-get install -y postgresql-client vim zsh
RUN mkdir /rails-postgres
ENV APP_ROOT /rails-postgres
WORKDIR $APP_ROOT
ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock
RUN bundle install
ADD . $APP_ROOT
ENV TZ Asia/Tokyo
RUN chsh -s /bin/zsh
