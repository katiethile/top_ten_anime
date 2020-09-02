class TopTenAnime::Anime
  attr_accessor :title, :rank, :link
  @@all = []
  
   def initialize(title, rank, link)
    @title = title
    @rank = rank
    @link = link
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
 end 