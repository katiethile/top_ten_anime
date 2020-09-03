class TopTenAnime::CLI
  def call
    TopTenAnime::Scraper.get_page
    puts "Welcome to Anime Planet!"
    enter
    get_user_anime
  end
  
  def enter
    puts ""
    puts "The top 10 anime of all time:"
  end 
    
  def list_anime_ranks
    TopTenAnime::Anime.all.each_with_index{ |obj,index| puts "#{obj.rank}. #{obj.title}" if index < 10}  
  end
  
  def get_user_anime
    list_anime_ranks
    puts ""
    puts "What anime would you like more information on? From 1-10"
    input = gets.strip.to_i 
    if input < 11 && input > 0
      # is this input valid?
      # what do we do if the input is valid/invalid
    else
      
      #is the input valid?
      # what do we do if it's valid/invalid?
    puts TopTenAnime::Anime.all[input - 1].title
    TopTenAnime::Scraper.get_synopsis(TopTenAnime::Anime.all[input - 1].link) 
    binding.pry
  end 
    
    puts "" 
    puts "What anime would you like to view reviews on?"
    list_anime_ranks
    input = gets.strip.to_i 
    puts TopTenAnime::Anime.all[input - 1].title
    TopTenAnime::Scraper.get_reviews(TopTenAnime::Anime.all[input - 1].link)
   
    puts ""
    puts "Would you like to see another anime? Enter Y or N"
    view_again?
    end
    
    def view_again?
       input = gets.strip.downcase
    if input == "y"
      get_user_anime 
    elsif input == "n"
      puts ""
      puts "Thank you! See you next time!"
      exit
    else
      puts ""
      puts "Sorry, I don't quite understand that answer." 
      puts "Would you like to see another anime? Enter Y or N"
      view_again?
      end
    end 
 end 