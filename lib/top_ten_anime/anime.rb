class TopTenAnime::Anime
  attr_accessor :rank, :review, :name, :synopsis
  
  @@all = []
  
  def initialize(anime_name = nil, sypnosis = nil)
    #binding.pry 
    @anime_name = anime_name
    @sypnosis = sypnosis
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def anime_rank 
    @rank ||= doc.ss("tr.tableRank").text 
  end 
  
  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end
end