FROM ruby:3.2

RUN adduser --gecos '' --disabled-password appuser
USER appuser

COPY --chown="appuser" Gemfile* /code/
WORKDIR /code
RUN bundle install

COPY --chown="appuser" . /code/

ENV RACK_ENV="production"

EXPOSE 9292

CMD bundle exec rackup -o 0.0.0.0
