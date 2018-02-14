
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(my_songs)
    i = 0
    while i < my_songs.length
        puts "#{i + 1}. #{my_songs[i]}"
        i += 1
    end
end


def play(my_songs)
    puts "Please enter a song name or number:"
    input = gets.chomp
    if (1..9).include?(input.to_i)
        puts "Playing #{my_songs[input.to_i-1]}"
    elsif my_songs.include?(input)
        puts "Playing #{input}"
    else
        puts "Invalid input, please try again"
    end
end


def exit_jukebox
    puts "Goodbye"
end

def run(my_songs)
    puts "Please enter what you want:"
    input = gets.chomp
    case input
        when "play"
           play(my_songs)
        when "list"
          list(my_songs)
        when "help"
          help
        when "exit"
          exit()
        else
          puts "Error: Please enter a valid comand:"
        end
end


