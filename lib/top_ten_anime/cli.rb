class TopTenAnime::CLI
  def call
  TopTenAnime::Scraper.get_page
  puts "Welcome to Anime Planet!"
  enter
  list_anime_ranks
  get_user_anime
  end
  
  def enter
    puts ""
    puts "The top 10 anime of all time:"
  end 
    
   def list_anime_ranks
      TopTenAnime::Anime.all.each_with_index{ |obj,index| puts "#{obj.rank}. #{obj.title}" if index < 11}  
    end
  
  def get_user_anime
    puts ""
    puts "What anime would you like more information on? From 1-10"
    input = gets.strip.to_i
    puts TopTenAnime::Anime.all[input - 1].title
    TopTenAnime::Scraper.get_synopsis
   
    puts ""
    puts "Would you like to see another anime? Enter Y or N"

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
      enter
      end

   
   def print_info(input)
     puts @anime_ranks[input -1]
   end 
   
   def print_anime(anime)
     puts ""
     puts "----------- #{anime.title} - #{anime.rank} -----------"
     puts ""
     puts "#{anime.heading}"
     puts ""
     puts "---------------Summary/Synopsis--------------"
     puts ""
     puts "#{anime.synopsis}"
     puts ""
     
     puts ""
     puts "---------------Reviews-------------"
     puts ""
     puts "#{anime.reviews}"
   end 
 end 
 end 