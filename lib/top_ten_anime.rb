require_relative "./top_ten_anime/version"
require_relative "./top_ten_anime/cli"
require_relative "./top_ten_anime/scraper"
require_relative "./top_ten_anime/anime"

require 'json'
require 'nokogiri'
require 'open-uri'
require 'pry'
require 'httparty'
module TopTenAnime
  class Error < StandardError; end
  # Your code goes here...
end