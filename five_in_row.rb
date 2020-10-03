


require 'colorize'
require "tty-prompt"

def start_game
    board = Array.new(16) { Array.new(16) }


    winner = nil
    player = nil


    until winner
        player = (player == ' @  ') ? ' o  ' : ' @  '
        print_board(board)
        Move.new.player_move(player, board)
        winner = check_for_winner(board, player)
        if winner
            print_board (board)
        break
        end


    end

    puts
    puts "╔╦╗╦ ╦╔═╗  ╦ ╦╦╔╗╔╔╗╔╔═╗╦═╗  ╦╔═╗  "
    puts " ║ ╠═╣║╣   ║║║║║║║║║║║╣ ╠╦╝  ║╚═╗       #{winner}  "
    puts " ╩ ╩ ╩╚═╝  ╚╩╝╩╝╚╝╝╚╝╚═╝╩╚═  ╩╚═╝  "
end


