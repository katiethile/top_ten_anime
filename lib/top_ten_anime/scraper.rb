class TopTenAnime::Scraper 
  def self.get_page
  
    url = "https://www.anime-planet.com/anime/top-anime"
    website = Nokogiri::HTML(open(url))
    animes = website.css("tr")
    animes.collect do |row|
      rank = row.css("td.tableRank").text
      title = row.css("td.tableTitle").text
      if title != ''
       link = row.css("td.tableTitle a").attribute('href').text
       TopTenAnime::Anime.new(title,rank,link)
      end
  end 
  binding.pry 
  end 
  
  def self.get_synopsis(link)
    url = "https://www.anime-planet.com#{link}"
    website = Nokogiri::HTML(open(url))
    puts website.css("div.pure-1.md-3-5 p").text
  end 
end 

#TopTenAnime::Anime.all 
#TopTenAnime::Anime.all[1]
#TopTenAnime::Anime.all[0].link