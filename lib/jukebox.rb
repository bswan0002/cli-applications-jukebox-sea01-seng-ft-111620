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

def get_command
  puts "Please enter a command"
  gets.strip
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songArr)
  songArr.length.times do |i|
    puts "#{i+1}. #{songArr[i]}"
  end
end

def play(songArr)
  puts "Please enter a song name or number:"
  user_response = gets.strip
  
  if user_response.to_i > 0 and user_response.to_i <= songArr.length
    puts "Playing #{songArr[user_response.to_i - 1]}"
  elsif songArr.any? { |song| song == user_response }
    puts "Playing #{user_response}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

