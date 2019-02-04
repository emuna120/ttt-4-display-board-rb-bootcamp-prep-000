# Define display_board that accepts a board and prints
# out the current state.
require 'cmath' 

def display_board(board)
  vertical_line = '|'
  space_between_chars = ' '
  hirzontal_line = '-'
  num_of_h_lines = nu
  
  num_of_ele_on_line = get_num_of_eles_per_line(board)

  total_horizontal_lines  = hirzontal_line * num_of_h_lines
  our_new_board = two_dimentional_board(board) 
  
  
  our_new_board.each do |line_of_board| 
    line_of_board.each.with_index do |place_on_board, idx|
      print "#{space_between_chars}#{place_on_board}#{space_between_chars}"
      print "#{space_between_chars}#{vertical_line}#{space_between_chars}" unless idx == (num_of_ele_on_line - 1)
    end
    print "\n"
    puts "#{total_horizontal_lines}"
  end
  
end 
 
  
def two_dimentional_board(board_to_change)
  new_board =  []
  i = 0
  
  num_of_ele_on_line = get_num_of_eles_per_line(board_to_change)
  
  while i < board_to_change.length
      new_line = []
      until new_board.map(&:length) == num_of_ele_on_line
        new_line << board_to_change[i]
        i += 1
      end
      new_board << new_line
  end
  new_board
end 

def get_num_of_eles_per_line(board_arr)
  num_of_eles_per_line = CMath.sqrt(board_arr.length)
  num_of_eles_per_line.floor
end
