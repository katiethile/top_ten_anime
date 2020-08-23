class TopTenAnime::Anime
  attr_accessor :title, :rank, :link, :review
  @@all = []
   def initialize(title, rank, link, review)
    @title = title
    @rank = rank
    @link = link
    @review = review 
    @@all << self 
  end 
  def self.all 
    @@all 
  end 
  
  def self.find_by_name(title)
    @@all.detect { |anime| anime.title == title}
  end
  
  def self.find_by_rank(rank)
    @@all.detect { |anime| anime.rank == rank}
  end 
 end 

