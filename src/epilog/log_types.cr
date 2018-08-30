module Epilog::LogTypes
  @options = {
    "success" => {
      "emoji"      => "✔",
      "foreground" => "light_green",
      "background" => "black",
    },
    "error" => {
      "emoji"      => "✖",
      "foreground" => "red",
      "background" => "black",
    },
    "fatal" => {
      "emoji"      => "✖",
      "foreground" => "red",
      "background" => "black",
    },
    "warn" => {
      "emoji"      => "⚠",
      "foreground" => "yellow",
      "background" => "black",
    },
    "log" => {
      "emoji"      => "ℹ",
      "foreground" => "white",
      "background" => "black",
    },
    "info" => {
      "emoji"      => "ℹ",
      "foreground" => "blue",
      "background" => "black",
    },
    "start" => {
      "emoji"      => "●",
      "foreground" => "blue",
      "background" => "black",
    },
    "ready" => {
      "emoji"      => "♥",
      "foreground" => "green",
      "background" => "black",
    },
    "debug" => {
      "emoji"      => "…",
      "foreground" => "dark_gray",
      "background" => "black",
    },
    "trace" => {
      "emoji"      => "…",
      "foreground" => "dark_gray",
      "background" => "black",
    },
  }
end
