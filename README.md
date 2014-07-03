Spyglass Web Server
===================

Spyglass is a Rack web server that rides on Unix systems. 

It was designed from the ground up to be an educational tool. It's primary purpose will always be to show techniques and reveal intent over features and speed.

How to use it
==============

To get a good introduction to the source code and the architecture run `rake read`. Your other options:

1. If you have to use it to understand it then have a look at the Usage heading below.
2. If you want to peruse the raw source then go ahead, you've already got it! You can browse the [Rocco](https://github.com/rtomayko/rocco)-annotated source code using `rake read`.
3. If you're a tinkerer then you're free to make modifications to the code. There's not a good way to share them at the moment, but if you do anything interesting or want help with something then send an email to jesse@jstorimer.com.

Usage
======

Spyglass is not packaged as a Rubygem. 

It comes with a script called `spyglass` in the `bin/` directory. If you want to use the binary with Rack applications on your system the easiest approach is to drop a symlink to `bin/spyglass` somewhere in your `PATH`.

    ln -s /path/to/current/dir/bin/spyglass /usr/local/bin/spyglass
    spyglass -h

Dependencies for development/testing can be installed with Bundler, using the `bundle` command.

Spyglass' http parser is borrowed from Thin, and is a C extension. You'll need to compile it for your system using `rake compile` before running the server.

License
========

See LICENSE

(c) 2011 Jesse Storimer

