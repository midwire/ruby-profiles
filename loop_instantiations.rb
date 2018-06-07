#!/usr/bin/env ruby
$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))

require 'lib/midwire'
include Midwire

MAX = 500000
results = []

##################################################
# Dramatic Inside vs. Outside loop instantiation

results << Profiler.time_this("for x in Collection with outside instantiation") {
  x = 0
  hash = Hash.new
  for i in (0..MAX)
    x = i * i
    hash[i] = x
  end
}

results << Profiler.time_this("for x in Collection with inside instantiation") {
  for i in (0..MAX)
    x = i * i
    hash = Hash.new
    hash[i] = x
  end
}

print_results(results)
