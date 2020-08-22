class TopTenAnime::Anime
  attr_accessor :title, :rank
  @@all = []
   def initialize(title,rank)
    @title = title
    @rank = rank
    @@all << self 
  end 
  def self.all 
    @@all 
  end 
  
  def self.find_by_name(name)
    @@all.detect { |obj| obj.name == name)
  end
  
 
end

