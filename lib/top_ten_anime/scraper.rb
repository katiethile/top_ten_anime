# #require 'pry'

# class TopTenAnime::Scraper
#   def get_rank
#     binding.pry
#     Nokogiri::HTML(open("https://www.anime-planet.com/anime/top-anime"))
#   # binding.pry
#   end
  
#   def scrape_anime_ranks
#     self.get_rank.css("")
#   end 
# end 

class TopTenAnime::Scraper 
  def self.scrape_anime_ranks
   # binding.
   url = "https://www.anime-planet.com/anime/top-anime"
  website = Nokogiri::HTML(open(url))
  section = website.css
  animes = section.css("tr")
  #anime_title = section.css("td.tableTitle").text #anime title 
  #anime_rank = section.css("td.tableRank").text #anime rank 
end 
end 