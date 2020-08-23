class TopTenAnime::CLI
  def call
    puts "Welcome to Anime Planet!"
    enter
   # TopTenAnime::Scraper.scrape_anime_ranks
   TopTenAnime::Scraper.get_page 
    enter 
    get_user_anime
    print_anime(anime)
  end
  def enter
   # binding.pry
    puts ""
    puts "The top 10 anime of all time:"
    #TopTenAnime::Anime.all.each { |obj| puts obj.title }
  end 
    
   def list_anime_ranks
    #binding.pry 
      TopTenAnime::Anime.all.each { |obj| puts "#{obj.rank}. #{obj.title}" }  
    end
  
  def get_user_anime
    #binding.pry
    puts ""
    puts "What anime would you like to click on/see? From 1-10."
    input = gets.strip.to_i
   # print_animes(input)
    puts ""
    puts "What anime would you like more information on? From 1-10"
    input = gets.strip.to_i
    
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