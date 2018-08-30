require "crayon"
require "stringpad"
require "../log_types"

module Epilog
  WHITE = Crayon::Crayon.new("white", "black")

  class FancyReporter
    include Epilog::LogTypes

    @crayon_instances = {} of String => Crayon::Crayon

    def initialize
      @options.each_key do |key|
        emoji = @options[key]["emoji"].as(String)
        foreground = @options[key]["foreground"].as(String)
        background = @options[key]["background"].as(String)
        @crayon_instances[key] = Crayon::Crayon.new(foreground, background, {
          "bold" => true,
        })
      end
    end

    def format(log_type, message)
      colors = @crayon_instances.fetch(log_type)
      emoji = @options[log_type]["emoji"].as(String)
      colored_emoji = colors.apply(emoji)
      colored_log_type = colors.apply(log_type)
      colored_message = WHITE.apply(message)
      "#{colored_emoji} #{Stringpad.rpad(colored_log_type, " ", 8 - log_type.size)} #{colored_message}"
    end
  end
end
