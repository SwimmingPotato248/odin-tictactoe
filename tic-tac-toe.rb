require 'pry'

class Game
    def initialize
        @board = [
            [" ", "|", " ", "|", " "],
            ["-", "-", "-", "-", "-"],
            [" ", "|", " ", "|", " "],
            ["-", "-", "-", "-", "-"],
            [" ", "|", " ", "|", " "],]
        @current_player = "x"
        @winner = false
    end 

    def draw_board
        @board.each { |row| puts row.join }
        puts "Make your move #{@current_player}" if @winner == false
    end

    def winning_message
        puts "#{@current_player} won!"
    end

    def check_winner
        3.times do |n|
            n = n * 2
            if @board[n][0] == @board[n][2] && @board[n][0] == @board[n][4] && @board[n][0] != " "
                puts winning_message()
                @winner = true
            elsif @board[0][n] == @board[2][n] && @board[0][n] == @board[4][n] && @board[0][n] != " "
                puts winning_message()
                @winner = true
            end
        end

        if @board[0][0] == @board[2][2] && @board[0][0] == @board[4][4] && @board[2][2] != " "
            puts winning_message()
            @winner = true
        elsif @board[0][4] == @board[2][2] && @board[0][4] == @board[4][0] && @board[2][2] != " "
            puts winning_message()
            @winner = true
        end
    end

    def move(row, column)
        row = (row - 1) * 2
        column = (column - 1) * 2
        if @board[row][column] = " "
            @board[row][column] = @current_player
            check_winner()
            @current_player == "x" ? @current_player = "o" : @current_player = "x"
            draw_board()
        else
            puts "Invalid move"
        end
    end
end

game = Game.new
game.draw_board

game.move(1,1)
game.move(2,2)
game.move(1,2)
game.move(1,2)
game.move(3,3)
game.move(1,3)
