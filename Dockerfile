FROM elixir:1.5.3

RUN apt-get update -yq && \
    apt-get upgrade -yq && \
    curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get install -yq yarn apt-utils nodejs build-essential ruby ruby-all-dev  inotify-tools

COPY . /srv
WORKDIR /srv

# RUN npm install --no-bin-links 
# RUN node node_modules/brunch/bin/brunch build

RUN mix local.hex --force
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new-1.3.0.ez

RUN mix deps.get --force
RUN mix local.rebar --force
RUN mix deps.compile --force

