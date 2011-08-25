#!/usr/bin/env ruby
$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))

require 'lib/midwire'
include Midwire

##################################################
# Collection.each vs. For x vs. While true vs. Until false

# BEGIN case_when
Profiler.time_this("case when using strings") {
  x = "10"
  case x
  when "1"
    puts "it is #{x}"
  when "2"
    puts "it is #{x}"
  when "3"
    puts "it is #{x}"
  when "4"
    puts "it is #{x}"
  when "5"
    puts "it is #{x}"
  when "6"
    puts "it is #{x}"
  when "7"
    puts "it is #{x}"
  when "8"
    puts "it is #{x}"
  when "9"
    puts "it is #{x}"
  when "10"
    puts "it is #{x}"
  end
}
# END case_when

# BEGIN if_elsif_else
Profiler.time_this("if elsif else using strings") {
  x = "10"
  if x == "1"
    puts "it is #{x}"
  elsif x ==  "2"
    puts "it is #{x}"
  elsif x ==  "3"
    puts "it is #{x}"
  elsif x ==  "4"
    puts "it is #{x}"
  elsif x ==  "5"
    puts "it is #{x}"
  elsif x ==  "6"
    puts "it is #{x}"
  elsif x ==  "7"
    puts "it is #{x}"
  elsif x ==  "8"
    puts "it is #{x}"
  elsif x ==  "9"
    puts "it is #{x}"
  elsif x ==  "10"
    puts "it is #{x}"
  else
    puts "it is #{x}"
  end
}
# BEGIN if_elsif_else


# BEGIN case_when_integers
Profiler.time_this("case when using integers") {
  x = 10
  case x
  when 1
    puts "it is #{x}"
  when 2
    puts "it is #{x}"
  when 3
    puts "it is #{x}"
  when 4
    puts "it is #{x}"
  when 5
    puts "it is #{x}"
  when 6
    puts "it is #{x}"
  when 7
    puts "it is #{x}"
  when 8
    puts "it is #{x}"
  when 9
    puts "it is #{x}"
  when 10
    puts "it is #{x}"
  end
}
# END case_when_integers

# BEGIN if_elsif_else_integers
Profiler.time_this("if elsif else using integers") {
  x = 10
  if x == 1
    puts "it is #{x}"
  elsif x ==  2
    puts "it is #{x}"
  elsif x ==  3
    puts "it is #{x}"
  elsif x ==  4
    puts "it is #{x}"
  elsif x ==  5
    puts "it is #{x}"
  elsif x ==  6
    puts "it is #{x}"
  elsif x ==  7
    puts "it is #{x}"
  elsif x ==  8
    puts "it is #{x}"
  elsif x ==  9
    puts "it is #{x}"
  elsif x ==  10
    puts "it is #{x}"
  else
    puts "it is #{x}"
  end
}
# BEGIN if_elsif_else_integers

# BEGIN if_elsif_else_integers2
Profiler.time_this("if elsif else using integers with ===") {
  x = 10
  if x === 1
    puts "it is #{x}"
  elsif x ===  2
    puts "it is #{x}"
  elsif x ===  3
    puts "it is #{x}"
  elsif x ===  4
    puts "it is #{x}"
  elsif x ===  5
    puts "it is #{x}"
  elsif x ===  6
    puts "it is #{x}"
  elsif x ===  7
    puts "it is #{x}"
  elsif x ===  8
    puts "it is #{x}"
  elsif x ===  9
    puts "it is #{x}"
  elsif x ===  10
    puts "it is #{x}"
  else
    puts "it is #{x}"
  end
}
# BEGIN if_elsif_else_integers2
