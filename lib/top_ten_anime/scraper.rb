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
  end 
end 

    # rank = section.css("td.tableRank").text 
    # title = section.css("td.tableTitle").text 
    
#   Nokogiri::HTML(open("https://www.anime-planet.com/anime/top-anime"))
  
#   rank = doc.css("tr.tableRank").each do |rank|
#     rank.text 
#   end 
# end
# end
