# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# user_name = gets.strip 

# puts say_hello(user_name)

def help 
  puts /I accept the following commands:/
  puts /- help : displays this help message/
  puts /- list : displays a list of songs you can play/
  puts /- play : lets you choose a song to play/
  puts /- exit : exits this program/
end

def list(songs) 
  songs.each_with_index { |item, index|
    puts "#{index+1}. #{item}" }
end 

def play(songs)
 puts /Please enter a song name or number:/
 user_input = gets.strip
 
 if (1..9).to_a.include?(user_input.to_i)
   puts "Playing #{songs[user_input.to_i-1]}"
 elsif songs.include?(user_input)
  puts "Playing #{user_input}"
 else
   puts /Invalid input, please try again/
      end 
    end
  


def exit_jukebox 
  puts "Goodbye"
end 

def run(songs)
  puts /Please enter a command:/
  user_input = gets.strip 
  i = 0 
  while i < songs.length do 
    if user_input.to_s == "list"
      list(songs)
    elsif user_input.to_s == "play"
    play(songs)
    elsif user_input.to_s == "help"
    help
    elsif user_input.to_s == "exit"
    exit_jukebox
    break
    end
    i += 1
  end
end
