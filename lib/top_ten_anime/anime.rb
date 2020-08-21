class TopTenAnime::Anime
  attr_accessor :rank, :anime_review
  attr_reader :anime_name, :sypnosis
  
  @@all = []
  
  def initialize(anime_name, sypnosis)
    #binding.pry 
    @anime_name = anime_name
    @sypnosis = sypnosis
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end
end