#require 'pry'

class TopTenAnime::Scraper
  def self.get_page
     binding.pry
    Nokogiri::HTML(open("https://myanimelist.net/topanime.php?type=bypopularity"))
    binding.pry
  end
end 