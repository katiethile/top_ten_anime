class TopTenAnime::Scraper 
  def self.get_page
  
    url = "https://www.anime-planet.com/anime/top-anime"
    website = Nokogiri::HTML(open(url))
    animes = website.css("tr")
    
    animes.collect do |row|
      rank = row.css("td.tableRank").text
    title = row.css("td.tableTitle").text
    TopTenAnime::Anime.new(title,rank) unless title == ""
    end 
   # binding.pry
  end 
  
  def self.get_synopsis(title)
    url = "https://www.anime-planet.com/anime/fullmetal-alchemist-brotherhood"
    website = Nokogiri::HTML(open(url))
    puts website.css("div.pure-1.md-3-5 p").text
  end 
end 

#TopTenAnime::Anime.all 