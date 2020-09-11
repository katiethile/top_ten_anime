class TopTenAnime::CLI
  def call
    TopTenAnime::Scraper.get_page
    puts "Welcome to Anime Planet!".blue
    enter
    get_user_anime
  end
  
  def enter
    puts ""
    puts "The top 10 anime of all time:".yellow
  end 
    
  def list_anime_ranks
    TopTenAnime::Anime.top_ten.each_with_index{ |obj| puts "#{obj.rank}. #{obj.title}"}  
  end
  
  def get_user_anime
    list_anime_ranks
    puts ""
    puts "What anime would you like more information on? From 1-10".light_magenta
    input = gets.strip.to_i
    if input < 11 && input > 0
      puts TopTenAnime::Anime.all[input - 1].title.cyan
    TopTenAnime::Scraper.get_synopsis(TopTenAnime::Anime.all[input - 1].link) 
    else
      view_again?
  end 
    
    puts "" 
    puts "What anime would you like to view reviews on?".light_magenta
    list_anime_ranks
    input = gets.strip.to_i
    if input < 11 && input > 0 
    puts TopTenAnime::Anime.all[input - 1].title.cyan
    TopTenAnime::Scraper.get_reviews(TopTenAnime::Anime.all[input - 1].link)
  else 
    view_again?
  end 
   
    puts ""
    puts "Would you like to see another anime? Enter Y or N".light_magenta
    view_again?
    end
    
    def view_again?
       input = gets.strip.downcase
    if input == "y"
      get_user_anime 
    elsif input == "n"
      puts ""
      puts "Thank you! See you next time!".green
      exit
    else
      puts ""
      puts "Sorry, I don't quite understand that answer." .red
      puts "Would you like to see another anime? Enter Y or N".red
      view_again?
      end
    end 
 end 