FROM jekyll/builder:latest

WORKDIR /srv/jekyll

# Optimize gem caching
COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 4000

CMD ["jekyll", "serve", "--watch", "--host", "0.0.0.0", "--future"]