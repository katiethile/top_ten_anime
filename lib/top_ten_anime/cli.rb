require 'pry'

class TopTenAnime::CLI 
  def call 
    puts "Welcome to MyAnimeList!"
  end 
  
  def list_anime_ranks
    puts "The top 10 anime of all time:"
    puts <<-DOC.gsub /^\s*/, ''
    binding.pry 
      1. Death Note (8.63 score)
      2. Shingeki no Kyojin (8.44 score)
      3. Sword Art Online (7.32 score)
      4. Fullmetal Alchemist: Brotherhood (9.22 score)
      5. One Punch Man (8.62 score)
      6. Tokyo Ghoul (7.83 score)
      7. Boku no Hero Academia (8.21 score)
      8. Steins;Gate (9.13 score)
      9. No Game No Life (8.26 score)
      10. Naruto (7.88 score)
    DOC 
  end 
  
    def 
  end 