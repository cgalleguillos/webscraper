FROM ruby:2.7

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

RUN chmod +x /usr/src/app/script.rb
ENTRYPOINT ["/usr/src/app/script.rb"]
CMD ["./script.rb"]
