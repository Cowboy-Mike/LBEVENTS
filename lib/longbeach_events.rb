# frozen_string_literal: true

require_relative "./longbeach_events/version"
require_relative "./longbeach_events/cli"
require_relative "./longbeach_events/scraper"
require_relative "./longbeach_events/events"
require "nokogiri"
require "pry"
require "open-uri"

module LongbeachEvents
  class Error < StandardError; end
  # Your code goes here...
end
