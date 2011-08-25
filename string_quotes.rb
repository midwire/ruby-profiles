#!/usr/bin/env ruby
$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))
# Interpolation is always cheaper and faster on ruby 1.8.7
# TODO: test on 1.9.x

require 'lib/midwire'
include Midwire

MAX = 100000

##################################################
# Quoted Strings

Profiler.time_this("Single Quotes (+ operator at end):") {
  x = ''
  (0..MAX).each do |i|
    x = 'This is a test ' + i.to_s
  end
}

Profiler.time_this("Single Quotes (+ operator in middle):") {
  x = ''
  (0..MAX).each do |i|
    x = 'This is a test ' + i.to_s + 'x'
  end
}

Profiler.time_this("Single Quotes (<< operator at end):") {
  x = ''
  (0..MAX).each do |i|
    x = 'This is a test ' << i.to_s
  end
}

# Very slow
Profiler.time_this("Single Quotes: (<< operator in middle)") {
  x = ''
  (0..MAX).each do |i|
    x = 'This is a test ' << i.to_s << 'x'
  end
}

Profiler.time_this("Double Quotes (interpolation at end):") {
  x = ""
  (0..MAX).each do |i|
    x = "This is a test #{i}"
  end
}

Profiler.time_this("Double Quotes (interpolation in middle):") {
  x = ""
  (0..MAX).each do |i|
    x = "This is a test #{i}x"
  end
}
