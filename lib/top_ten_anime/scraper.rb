class TopTenAnime::Scraper
  def get_page
    Nokogiri::HTML(open("https://myanimelist.net/topanime.php?type=bypopularity"))
  end
end 