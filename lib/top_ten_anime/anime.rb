class TopTenAnime::Anime
  attr_accessor :rank, :review, :title, :synopsis
  
  @@all = []
   
   def initialize(title)
    @title = title
    @rank = rank 
    #@sypnosis = sypnosis
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
end