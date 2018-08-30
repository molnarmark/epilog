require "./reporters/*"

module Epilog
  class Logger
    def initialize(reporter = "fancy")
      @reporter = reporter == "fancy" ? Epilog::FancyReporter.new : Epilog::MinimalReporter.new
    end

    def success(message)
      puts @reporter.format("success", message)
    end

    def error(message)
      puts @reporter.format("error", message)
    end

    def fatal(message)
      puts @reporter.format("fatal", message)
    end

    def warn(message)
      puts @reporter.format("warn", message)
    end

    def log(message)
      puts @reporter.format("log", message)
    end

    def info(message)
      puts @reporter.format("info", message)
    end

    def start(message)
      puts @reporter.format("start", message)
    end

    def ready(message)
      puts @reporter.format("ready", message)
    end

    def debug(message)
      puts @reporter.format("debug", message)
    end

    def trace(message)
      puts @reporter.format("trace", message)
    end
  end
end
