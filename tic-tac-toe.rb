class Game
    def initialize
        @board = [
            [" ", "|", " ", "|", " "],
            ["-", "-", "-", "-", "-"],
            [" ", "|", " ", "|", " "],
            ["-", "-", "-", "-", "-"],
            [" ", "|", " ", "|", " "],]
        @current_player = "x"
    end 

    def draw_board
        @board.each { |row| puts row.join }
        puts "Make your move #{@current_player}"
    end

    def move(row, column)
        row = (row - 1) * 2
        column = (column - 1) * 2
        @board[row][column] = @current_player
        @current_player == "x" ? @current_player = "o" : @current_player = "x"
        draw_board()
    end
end

game = Game.new
game.draw_board

game.move(1,2)
game.move(2,2)