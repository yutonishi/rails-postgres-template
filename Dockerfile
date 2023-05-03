FROM ruby:3.1.0
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y nodejs npm postgresql-client yarn vim zsh
RUN npm install n -g 
RUN n 14
RUN mkdir /app-name
ENV APP_ROOT /app-name
WORKDIR $APP_ROOT
ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock
RUN bundle install
ADD . $APP_ROOT
ENV TZ Asia/Tokyo
RUN chsh -s /bin/zsh
