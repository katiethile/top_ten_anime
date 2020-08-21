#require 'pry'

class TopTenAnime::Scraper
  def get_rank
     binding.pry
    Nokogiri::HTML(open("https://www.anime-planet.com/anime/top-anime"))
   # binding.pry
  end
  
  def scrape_anime_ranks
    self.get_rank.css("")
  end 
end 