class TopTenAnime::CLI
  def call
    puts "Welcome to MyAnimeList!"
    enter
    list_anime_ranks
    get_user_anime
  end
  def enter
    binding.pry
    puts ""
    puts "The top 10 anime of all time:"
    @anime_ranks = ["Fullmetal Alchemist: Brotherhood (4.7 score)", "Haikyuu!! Karasuno High School vs Shiratorizawa Academy (4.7 score)", "your name. (4.7 score)", "A Silent Voice (4.7 score)", "Attack on Titan 3rd Season: Part II (4.6 score)", "Haikyuu!! Second Season (4.6 score)", "Hunter x Hunter (2011) (4.6 score)", "Demon Slayer: Kimetsu no Yaiba (4.6 score)", "Gintama Kanketsu-hen: Yorozuya yo Eien Nare (4.6 score)", "Gintama (2015) (4.6 score)"]
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