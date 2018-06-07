Just some simple timings for different constructs and common idioms in Ruby.

# Installation

    $ bundle install --path=vendor/bundle --binstubs=stubs

# Usage

Just run the scripts that you are interested in:

If you have `./stubs` in your path then no need to preprend with `bundle exec`:

    $ ./string_quotes.rb
    $ ./case_vs_if.rb
    $ ./loop_constructs.rb
    $ ./loop_instantiations.rb

Otherwise:

    $ bundle exec ./string_quotes.rb
    $ bundle exec ./case_vs_if.rb
    $ bundle exec ./loop_constructs.rb
    $ bundle exec ./loop_instantiations.rb

## Ruby Versions

Currently `.ruby-version` is set to 2.5.1. If you want to try a different version, just install it and set the version you want in that file.

# Overview

The profiler (ruby-prof) will print out the results for each block, then after collecting each set of results, it will sort them from fastest to slowest and print out the sorted list.

    Sorted Results - Fastest-to-slowest:
    ------------------------------------
    for x in Collection with outside instantiation     1.453473
    for x in Collection with inside instantiation      4.695289
