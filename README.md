# ChatRoom

An educational application where a user without registration can create a "room" for communication. You can send a link
to this "room" to a friend and he will also be able to enter into correspondence.

Upon entering the site, a username is generated automatically.
Users can delete their created rooms.

`PostgreSQL` is used as a powerful, open source object-relational database system.

For the development of the frontend, used `bootstrap 5.0` and `webpacker 5`.

## Ruby and Ruby on Rails version

- Ruby 3.0.0

- Rails  6.1.3

## The main gems used in the application:

`redis` - in-memory data structure store, used as a database, cache, and message broker;

`faker` - easily generate fake data: names, addresses, phone numbers, etc;

`turbolinks` - makes navigating your web application faster;

## Deploy app local

Note: all commands must be run from the command line/terminal, from the directory, where you clone repository

1. Download or clone repository, then run bundler

```ruby
bundle exec install
```

2. To create a database, run

```ruby
rails db:schema:load
```

3. Credentials setup

For the application to work correctly in a `production environment`, add the following keys and their values
to your `credentials.yml.enc` file:

```ruby
EDITOR=nano rails credentials:edit
```

```ruby
redis:
  redis_url:

production_db:
  database:
  username:
  password:
```

## Deploy on Heroku

1. Attach Heroku Redis to an application via the CLI:

```ruby
heroku addons:create heroku-redis:hobby-dev -a your-app-name
```

2. Add your master.key to Heroku Config Vars

```ruby
heroku config:set RAILS_MASTER_KEY=123456789
```

3. Config production enviroment

Change the options `config.action_cable.url` and `config.action_cable.allowed_request_origins` in
`config/environments/production.rb` with a URL to your app on Heroku.

4. Deploy app on Heroku

```ruby
git push heroku master
```

## How to run app

To start the Rails server, type

```ruby
rails s
```
