<a name="usage"></a>

# README

This project was generated with Ruby version 2.3.3

Multiple lists of todo task can be generated. Each todo list contains its own todo tasks. These can be marked as completed or deleted.

## Getting Started

Install all dependancies:

```
$ bundle install
```

Create the database and run migrations:

```
$ rake db:create db:migrate
```

Start the server:

```
$ rails server
```

You need to install redis for the emails 
```
$ brew install redis 
```

And start the service
```
brew services start redis
```
