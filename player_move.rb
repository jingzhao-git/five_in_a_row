class Move
    def player_move(player, grid)
        # invalid = true
        loop do
            print "Player #{player} move (row,column):"
            move = gets.chomp.split(',')
            @row, @col = move.map { |element| element.to_i }

            if invalid_move?(@row, @col, grid)
                puts "Invalid Move! Please try again."
            else
                # invalid = false
                grid[@row][@col] = player
                @y, @x = @row, @col
                return @y, @x
                break
            end
        end
    end

    def invalid_move?(row, col, grid)
        row < 0 || row > 15 || col < 0 || col > 15 || grid[row][col] != nil
    end
end