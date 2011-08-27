#!/usr/bin/env ruby
$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))

require 'lib/midwire'
include Midwire

MAX = 100000

##################################################
# case vs if-elsif

# BEGIN case_when
Profiler.time_this("case when using strings") {
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
# END case_when

# BEGIN if_elsif_else
Profiler.time_this("if elsif else using strings") {
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
# BEGIN if_elsif_else


# BEGIN case_when_integers
Profiler.time_this("case when using integers") {
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
# END case_when_integers

# BEGIN if_elsif_else_integers
Profiler.time_this("if elsif else using integers") {
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
# BEGIN if_elsif_else_integers

# BEGIN if_elsif_else_integers2
Profiler.time_this("if elsif else using integers with ===") {
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
# BEGIN if_elsif_else_integers2
