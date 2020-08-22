class TopTenAnime::CLI
  def call
    puts "Welcome to Anime Planet!"
    enter
   # TopTenAnime::Scraper.scrape_anime_ranks
   TopTenAnime::Scraper.get_page 
    list_anime_ranks
    enter 
    get_user_anime
    print_anime(anime)
  end
  def enter
    #binding.pry
    puts ""
    puts "The top 10 anime of all time:"
    @anime_ranks = ["1. Fullmetal Alchemist: Brotherhood (4.7 score)", "2. Haikyuu!! Karasuno High School vs Shiratorizawa Academy (4.7 score)", "3. your name. (4.7 score)", "4. A Silent Voice (4.7 score)", "5. Attack on Titan 3rd Season: Part II (4.6 score)", "6. Haikyuu!! Second Season (4.6 score)", "7. Hunter x Hunter (2011) (4.6 score)", "8. Demon Slayer: Kimetsu no Yaiba (4.6 score)", "9. Gintama Kanketsu-hen: Yorozuya yo Eien Nare (4.6 score)", "10. Gintama (2015) (4.6 score)"]
  end
  def list_anime_ranks
    #binding.pry
    @anime_ranks.each do |anime|
      puts anime
    end
  end
  def get_user_anime
    #binding.pry
    puts ""
    puts "What anime would you like to click on/see? From 1-10."
    input = gets.strip.to_i
    print_animes(input)
    puts ""
    puts "What anime would you like more information on? From 1-10"
    input = gets.strip.to_i
    print_info(input)
    
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
    end
  end 
   def print_animes(input)
     puts @anime_ranks[input - 1]
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