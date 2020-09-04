class TopTenAnime::Scraper
  def self.get_page
    url = "https://www.anime-planet.com/anime/top-anime"
    website = Nokogiri::HTML(open(url))
    animes = website.css("tr")
    animes.each do |row|
      rank = row.css("td.tableRank").text
      title = row.css("td.tableTitle").text
      if title != ''
        link = row.css("td.tableTitle a").attribute('href').text
        TopTenAnime::Anime.new(title,rank,link)
      end
    end
  end
  
  def self.get_synopsis(link)
    url = "https://www.anime-planet.com#{link}"
    website = Nokogiri::HTML(open(url))
    puts website.css("div.pure-1.md-3-5 p").text.strip
  end
  
  def self.get_reviews(link)
    url = "https://www.anime-planet.com#{link}" + "/reviews"
    website = Nokogiri::HTML(open(url))
    puts website.css("section.pure-g").text.strip#.gsub!(/(\r\n|\r|\n)/, "") 
  end
end