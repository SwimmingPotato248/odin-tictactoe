def draw_board
    [[" ", "|", " ", "|", " "],
     ["-", "-", "-", "-", "-"],
     [" ", "|", " ", "|", " "],
     ["-", "-", "-", "-", "-"],
     [" ", "|", " ", "|", " "],]
end

board = draw_board
board.each { |rows| puts rows.join }

