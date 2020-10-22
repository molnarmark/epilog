require "stringpad"
require "colorize"
require "../log_types"

module Epilog
  class FancyReporter
    include Epilog::LogTypes

    def format(log_type, message)
      foreground = @options[log_type]["foreground"].as(Symbol)
      background = @options[log_type]["background"].as(Symbol)
      colored_emoji = @options[log_type]["emoji"].colorize.fore(foreground).mode(:bold)
      colored_log_type = log_type.colorize.fore(foreground).mode(:bold)
      colored_message = message.colorize(:white)
      "#{colored_emoji} #{Stringpad.rpad(colored_log_type, " ", 8 - log_type.size)} #{colored_message}"
    end
  end
end
