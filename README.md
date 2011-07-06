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

There are two simple Rails applications in this repo, called `batman` and
`robin`. The `batman` app is based on Rails 2.3.5, and `robin` uses Rails
3.1.0.rc4. This is by design, to allow testing Cukable with multiple
applications having different dependencies.

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


Verification
------------

Make sure the basic Rails applications work:

    $ cd batman
    $ script/server


Visit http://localhost:3000/. You should see **Batman**. Repeat for `robin`
(note the different command to start the server):

    $ cd ../robin
    $ rails server

You should see **Robin**.

Both `batman` and `robin` include some very simple Cucumber features. To run them:

    $ cd batman
    $ cucumber

    $ cd ../robin
    $ cucumber

If everything is green, you should be ready to start testing using FitNesse/Cukable.


Too many gems?
--------------

If your gemset gets cluttered with stuff you don't need, and/or you have
multiple versions of some gems, you can clean them all out and start fresh.
Use the provided `remove_all_gems.sh` shell script to remove all gems, then
re-run `bundle install`. For example, to start anew in the `batman` gemset:

    $ cd batman
    $ sh ../remove_all_gems.sh
    $ bundle install


TODO
----

- Create basic Cucumber scenarios for both apps
- Create/convert features to Cukable wiki pages


Assigned
--------

- (Eric) Make changes to Cukable code to allow it to support multiple apps
- (Eric) Make sure Cukable is smart enough to switch RVM environments when it runs


DONE
----

- Create FitNesse wiki (sibling of `batman` and `robin` directories)
- Add some different gems to each app, to make their gemsets distinct


References
----------

- [Cukable docs](http://rdoc.info/github/wapcaplet/cukable/master/frames)

Running RVM sub-shells:

- http://groups.google.com/group/rubyversionmanager/browse_thread/thread/61bbfba6401e7bb1
- http://beginrescueend.com/workflow/subshells/

