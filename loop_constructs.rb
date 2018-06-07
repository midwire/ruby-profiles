#!/usr/bin/env ruby
$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))

require 'lib/midwire'
include Midwire

MAX = 500000
results = []

##################################################
# Collection.each vs. For x vs. While true vs. Until false

puts "BEGIN: Loop Construct Testing"

results << Profiler.time_this("Collection.each:") {
  x = 0
  (0..MAX).each do |i|
    x = i * i
  end
}

results << Profiler.time_this("for x in:") {
  x = 0
  for i in (0..MAX)
    x = i * i
  end
}

results << Profiler.time_this("While true:") {
  x = 0
  i = 0
  while true
    i = i + 1
    x = i * i
    break if i >= MAX
  end
}

results << Profiler.time_this("Until false:") {
  x = 0
  i = 0
  until false
    i = i + 1
    x = i * i
    break if i >= MAX
  end
}

results << Profiler.time_this("Begin..end until false:") {
  x = 0
  i = 0
  begin
    i = i + 1
    x = i * i
    break if i >= MAX
  end until false
}

results << Profiler.time_this("x.times do:") {
  x = 0
  MAX.times do |i|
    x = i * i
  end
}

puts "END: Loop Construct Testing"

print_results(results)
