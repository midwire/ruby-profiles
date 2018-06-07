require 'ruby-prof'

module Midwire

  class Profiler
    attr_reader :comment

    class << self
      def time_this(comment, &block)
        RubyProf.measure_mode = RubyProf::PROCESS_TIME
        RubyProf.start
        yield
        result = RubyProf.stop
        puts "\nTimings for [#{comment}]"
        printer = RubyProf::FlatPrinter.new(result)
        printer.print(STDOUT)
        { comment => result }
      end
    end

    def start(comment)
      @comment = comment
      RubyProf.measure_mode = RubyProf::PROCESS_TIME
      RubyProf.start
    end

    def stop
      result = RubyProf.stop
      puts "\nTimings for #{@comment}"
      printer = RubyProf::GraphHtmlPrinter.new(result)
      file = File.open("#{Rails.root}/public/ruby_prof.html", 'w')
      printer.print(file, :min_percent => 2)
    end
  end

end
