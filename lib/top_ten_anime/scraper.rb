class TopTenAnime::Scraper 
  def self.get_page
  
    url = "https://www.anime-planet.com/anime/top-anime"
    website = Nokogiri::HTML(open(url))
    animes = website.css("tr")
    
    animes.collect do |row|
      rank = row.css("td.tableRank").text
    title = row.css("td.tableTitle").text
    TopTenAnime::Anime.new(title,rank)
    end 
   # binding.pry
  end 
end 

#TopTenAnime::Anime.all 