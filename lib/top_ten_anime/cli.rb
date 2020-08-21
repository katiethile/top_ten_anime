class TopTenAnime::CLI
  def call
    puts "Welcome to MyAnimeList!"
    enter
    list_anime_ranks
    get_user_anime
  end
  def enter
    #binding.pry
    puts ""
    puts "The top 10 anime of all time:"
    @anime_ranks = ["1. Death Note (8.63 score)", "2. Shingeki no Kyojin (8.44 score)", "3. Sword Art Online (7.32 score)", "4. Fullmetal Alchemist: Brotherhood (9.22)", "5. One Punch Man(8.62 score)", "6. Tokyo Ghoul (7.83 score)", "7. Boku no Hero Academia (8.21 score)", "8. Steins;Gate (9.13 score)", "9. No Game No Life (8.26 score)", "10. Naruto(7.88 score)"]
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
    #print_anime(anime)
    
    puts ""
    puts "Would you like to see another anime? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      enter 
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