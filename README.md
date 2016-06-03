# What is this?

This is an example Puppet module that shows how you can write spec tests to validate your Puppet
code. Using this module you can iterate faster, and test your code without deploying to real
Puppet servers.

# How do I use this?

## Ruby and Bundler

If you already have Bundler installed, go to the next step.

If you don't have Bundler, then you'll have to install it before you can run spec tests from
this module. You should also have a recent version of Ruby installed. An easy way to get both
of these is to install the Puppet Enterprise agent for your workstation OS.

Since this is a simple example, we're going to install Bundler as a global system library.
Ruby experts will probably reccomend other ways to install Bundler. YMMV.

### Installing on Bundler Linux and OSX 

Check if you have `gem` available in your path (Linux and OSX only):

* `which gem`

If you do, install Bundler as a global gem:

* `sudo gem install bundler`

Working with 

### Installing on Bundler Windows

TODO...

## Running spec tests for this module

* git clone this module to your workstation
* cd into the working directory
* run `bundle install` - this will install all of the Ruby libraries from the Gemfile.lock
* run `bundle exec rake spec` - this will run the actual spec tests

# What just happened?

After installing all of the Ruby libraries, and running `rake spec`, Ruby loaded Puppet, which
compiled a catalog, and `rspec-puppet` checked that catalog to ensure it matches the code in
`spec/classes/init_spec.rb`.

