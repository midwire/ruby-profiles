# frozen_string_literal: true

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__) + "/../lib"))

require 'bundler/setup' # Set up gems listed in the Gemfile.

require 'midwire/profiler'

module Midwire
  def print_results(result_array)
    puts("\nSorted Results - Fastest-to-slowest:\n")
    puts("------------------------------------\n")
    sorted_results(result_array).each do |hash|
      total = thread_total(hash.first[1]).to_s
      printf "%-50s %f\n", hash.first[0], total
    end
  end

  private

  def sorted_results(results)
    results.sort_by{ |e| thread_total(e.first[1]) }
  end

  def thread_total(profile)
    thread = profile.threads.first
    thread.total_time
  end
end
