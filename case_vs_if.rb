#!/usr/bin/env ruby
$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))

require 'lib/midwire'
include Midwire

MAX = 100000
results = []

##################################################
# case vs if-elsif

results << Profiler.time_this("case when using strings") {
  MAX.times do |i|
    x = "5"
    case x
    when "1"
      myvar = "it is #{x}"
    when "2"
      myvar = "it is #{x}"
    when "3"
      myvar = "it is #{x}"
    when "4"
      myvar = "it is #{x}"
    when "5"
      myvar = "it is #{x}"
    when "6"
      myvar = "it is #{x}"
    when "7"
      myvar = "it is #{x}"
    when "8"
      myvar = "it is #{x}"
    when "9"
      myvar = "it is #{x}"
    when "10"
      myvar = "it is #{x}"
    end
  end
}

results << Profiler.time_this("if elsif else using strings") {
  MAX.times do |i|
    x = "5"
    if x == "1"
      myvar = "it is #{x}"
    elsif x ==  "2"
      myvar = "it is #{x}"
    elsif x ==  "3"
      myvar = "it is #{x}"
    elsif x ==  "4"
      myvar = "it is #{x}"
    elsif x ==  "5"
      myvar = "it is #{x}"
    elsif x ==  "6"
      myvar = "it is #{x}"
    elsif x ==  "7"
      myvar = "it is #{x}"
    elsif x ==  "8"
      myvar = "it is #{x}"
    elsif x ==  "9"
      myvar = "it is #{x}"
    elsif x ==  "10"
      myvar = "it is #{x}"
    else
      myvar = "it is #{x}"
    end
  end
}

results << Profiler.time_this("case when using integers") {
  MAX.times do |i|
    x = 5
    case x
    when 1
      myvar = "it is #{x}"
    when 2
      myvar = "it is #{x}"
    when 3
      myvar = "it is #{x}"
    when 4
      myvar = "it is #{x}"
    when 5
      myvar = "it is #{x}"
    when 6
      myvar = "it is #{x}"
    when 7
      myvar = "it is #{x}"
    when 8
      myvar = "it is #{x}"
    when 9
      myvar = "it is #{x}"
    when 10
      myvar = "it is #{x}"
    end
  end
}

results << Profiler.time_this("case when using symbols") {
  MAX.times do |i|
    x = :five
    case x
    when :one
      myvar = "it is #{x}"
    when :two
      myvar = "it is #{x}"
    when :three
      myvar = "it is #{x}"
    when :four
      myvar = "it is #{x}"
    when :five
      myvar = "it is #{x}"
    when :six
      myvar = "it is #{x}"
    when :seven
      myvar = "it is #{x}"
    when :eight
      myvar = "it is #{x}"
    when :nine
      myvar = "it is #{x}"
    when :ten
      myvar = "it is #{x}"
    end
  end
}

results << Profiler.time_this("if elsif else using integers") {
  MAX.times do |i|
    x = 5
    if x == 1
      myvar = "it is #{x}"
    elsif x ==  2
      myvar = "it is #{x}"
    elsif x ==  3
      myvar = "it is #{x}"
    elsif x ==  4
      myvar = "it is #{x}"
    elsif x ==  5
      myvar = "it is #{x}"
    elsif x ==  6
      myvar = "it is #{x}"
    elsif x ==  7
      myvar = "it is #{x}"
    elsif x ==  8
      myvar = "it is #{x}"
    elsif x ==  9
      myvar = "it is #{x}"
    elsif x ==  10
      myvar = "it is #{x}"
    else
      myvar = "it is #{x}"
    end
  end
}

results << Profiler.time_this("if elsif else using integers with ===") {
  MAX.times do |i|
    x = 5
    if x === 1
      myvar = "it is #{x}"
    elsif x ===  2
      myvar = "it is #{x}"
    elsif x ===  3
      myvar = "it is #{x}"
    elsif x ===  4
      myvar = "it is #{x}"
    elsif x ===  5
      myvar = "it is #{x}"
    elsif x ===  6
      myvar = "it is #{x}"
    elsif x ===  7
      myvar = "it is #{x}"
    elsif x ===  8
      myvar = "it is #{x}"
    elsif x ===  9
      myvar = "it is #{x}"
    elsif x ===  10
      myvar = "it is #{x}"
    else
      myvar = "it is #{x}"
    end
  end
}

print_results(results)
