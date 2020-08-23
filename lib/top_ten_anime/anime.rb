class TopTenAnime::Anime
  attr_accessor :title, :rank
  @@all = []
   def initialize(title, rank)
    @title = title
    @rank = rank
    @@all << self 
  end 
  def self.all 
    @@all 
  end 
  
  def self.find_by_name(title)
    @@all.detect { |obj| obj.title == title}
  end
  
  def self.find_by_rank(rank)
    @@all.detect { |obj| obj.rank == rank}
 end 
end

