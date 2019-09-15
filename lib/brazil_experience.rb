#will act as environment

require "open-uri"
require "nokogiri"
require "colorize"
require "pry"

require "./lib/brazil_experience/version"

# require_relative "brazil_experience/version"

# module BrazilExperience
#   class Error < StandardError; end
# end

require_relative "./brazil_experience/cli"
require_relative "./brazil_experience/attractions"
require_relative "./brazil_experience/gastronomy"

