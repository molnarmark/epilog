require "crayon"
require "stringpad"
require "../log_types"

module Epilog
  class MinimalReporter
    include Epilog::LogTypes

    def initialize
    end

    def format(log_type, message)
      time = Time.now.to_s("%H:%M:%S %P")
      "[#{time}] #{Stringpad.rpad(log_type, " ", 8 - log_type.size)} #{message}"
    end
  end
end
