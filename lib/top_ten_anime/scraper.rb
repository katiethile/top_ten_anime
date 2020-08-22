class TopTenAnime::Scraper 
  def self.get_page
    #binding.pry 
  Nokogiri::HTML(open("https://www.anime-planet.com/anime/top-anime"))
  
  rank = doc.css("tr.tableRank").each do |rank|
    rank.text 
  end 
end
end
