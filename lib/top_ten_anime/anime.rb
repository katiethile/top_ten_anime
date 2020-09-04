class TopTenAnime::Anime
  attr_reader :title, :rank, :link
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
  
  def self.top_ten
    @@all[0..9]
  end 
 end 