require 'colorize'
require "tty-prompt"
require 'pry'
require "tty-box"
require 'emoji_regex'
require_relative 'print_board'
require_relative 'player_move'
require_relative 'check_for_winner'
require_relative 'five_in_row'

prompt = TTY::Prompt.new

text = <<TEXT
⚫️⚪️ emoji modifier base (Emoji_Modifier_Base)
TEXT
text.scan EmojiRegex::Regex do |emoji|
  puts "#{emoji}"*46
end


puts "\n"
puts"███████╗██╗██╗   ██╗███████╗    ██╗███╗   ██╗     █████╗     ██████╗  ██████╗ ██╗    ██╗".colorize(:green)
puts"██╔════╝██║██║   ██║██╔════╝    ██║████╗  ██║    ██╔══██╗    ██╔══██╗██╔═══██╗██║    ██║".colorize(:white)
puts"█████╗  ██║██║   ██║█████╗      ██║██╔██╗ ██║    ███████║    ██████╔╝██║   ██║██║ █╗ ██║".colorize(:green)
puts"██╔══╝  ██║╚██╗ ██╔╝██╔══╝      ██║██║╚██╗██║    ██╔══██║    ██╔══██╗██║   ██║██║███╗██║".colorize(:white)
puts"██║     ██║ ╚████╔╝ ███████╗    ██║██║ ╚████║    ██║  ██║    ██║  ██║╚██████╔╝╚███╔███╔╝".colorize(:green)
puts"╚═╝     ╚═╝  ╚═══╝  ╚══════╝    ╚═╝╚═╝  ╚═══╝    ╚═╝  ╚═╝    ╚═╝  ╚═╝ ╚═════╝  ╚══╝╚══╝ ".colorize(:white)
puts "\n"

text = <<TEXT
⚫️⚪️ emoji modifier base (Emoji_Modifier_Base)
TEXT
text.scan EmojiRegex::Regex do |emoji|
  puts "#{emoji}"*46
end


user_choice = prompt.select("Do you want to start?", ['Yes', 'No'])
if user_choice == 'Yes'
  puts "\n"
  puts "\n"
  puts "Players alternate turns placing a piece on an empty intersection.".colorize(:blue)
  puts "\n"
  puts "The winner is the first player to form an unbroken chain of five stones horizontally, vertically, or diagonally.".colorize(:blue)
  puts "\n"
  puts "\n"
  start_game
else
  puts "\n"
  puts" ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄       ▄         ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄         ▄ ".colorize(:green)
  puts"▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌     ▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌"
  puts"▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀      ▐░▌       ▐░▌▐░█▀▀▀▀▀▀▀█░▌▐░▌       ▐░▌".colorize(:green)
  puts"▐░▌          ▐░▌          ▐░▌               ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌"
  puts"▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄      ▐░█▄▄▄▄▄▄▄█░▌▐░▌       ▐░▌▐░▌       ▐░▌".colorize(:green)
  puts"▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌     ▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░▌       ▐░▌"
  puts" ▀▀▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀       ▀▀▀▀█░█▀▀▀▀ ▐░▌       ▐░▌▐░▌       ▐░▌".colorize(:green)
  puts"          ▐░▌▐░▌          ▐░▌                    ▐░▌     ▐░▌       ▐░▌▐░▌       ▐░▌"
  puts" ▄▄▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄           ▐░▌     ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌".colorize(:green)
  puts"▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌          ▐░▌     ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌"
  puts" ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀            ▀       ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀ ".colorize(:green)
  puts "\n"


end