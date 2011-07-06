Example Cukable setup
=====================

This repository is an experiment in using [Cukable](http://github.com/wapcaplet/cukable)
with multiple Rails applications.


Prerequisites
-------------

Install [RVM](http://beginrescueend.com), and follow the instructions for
editing your `.bash_profile`. After installing and activating RVM, install the
Ruby Enterprise Edition:

    $ rvm install ree

Switch to the global gemset and install bundler:

    $ rvm ree@global
    $ gem install bundler


Setup
-----

Clone this repo:

    $ git clone git@github.com:wapcaplet/example-cukable.git

There are two simple Rails applications in this repo, called `batman` and `robin`.
You should create separate RVM gemsets for these two apps:

    $ rvm ree
    $ rvm gemset create batman
    $ rvm gemset create robin

There are already `.rvmrc` files in the `batman` and `robin` directories that
will automatically switch to the appropriate gemset when you change directory.
RVM will ask you whether to trust these files when you first `cd` into either of them:

    $ cd batman

    (...)
    Do you wish to trust this .rvmrc from now on?
    ============================================================
    (y for yes, n for no) > y

Make sure you're in the right gemset:

    $ rvm info

    (...)
    gemset:    "batman"

Then install the gems:

    $ bundle install

Repeat for the `robin` application:

    $ cd ../robin
    (Yes, trust the .rvmrc)
    $ bundle install

