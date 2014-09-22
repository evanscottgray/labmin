labmin
======

Because spending a bazillion dollars on lab management is awfulsauce.

Developing Locally
=============
### Getting Started
Labmin is easy to develop with, all you need is some sweet ruby on rails goodness.
Here's the list of what you'll need installed before we can continue:
- [Ruby](http://rvm.io/rvm/install)
- [Bundler](http://bundler.io/)

Get started by cloning down the Labmin repo and moving into it:
```shell
git clone git@github.com:evanscottgray/labmin.git && cd labmin
```

Now we can install the required Gems:
```shell
bundle install
```
> # Heads up!
You'll need some special environment variables to make the stuff below this work. Find Andrew or Evan for this info.


Finally we'll create the database and start the rails server:
```shell
bundle exec rake db:migrate && rails server
```
# Deploying Labmin
To deploy Labmin, all you have to do is get a copy of [rdocker-cli](https://github.rackspace.com/evan5143/rdocker-cli) and have access to [labmin_secrets](https://github.rackspace.com/evan5143/labmin_secrets).

Once you have both of those things, you can simply issue the following command to deploy the master branch of the application:
```shell
rdocker-cli restart_labmin
```
Using rdocker-cli to deploy the application will automatically update the [labmin.vdojo.rackspace.net](https://labmin.vdojo.rackspace.net) DNS record.