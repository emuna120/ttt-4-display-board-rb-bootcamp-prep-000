# Define display_board that accepts a board and prints
# out the current state.
require 'cmath' 

def display_board(board)
  vertical_line = '|'
  space_between_chars = ' '
  horizontal_line = '-'
  
  num_of_ele_on_line = get_num_of_eles_per_line(board)
  
  num_of_h_lines = ((num_of_ele_on_line + horizontal_line.length) ** 2) - 1
  total_horizontal_lines  = horizontal_line * num_of_h_lines
  
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
  new_line = []

  
  num_of_ele_on_line = get_num_of_eles_per_line(board_to_change)
  

  
  board_to_change.each do |ele|
    
    if new_line.length < num_of_ele_on_line
      new_line << ele
    else
      new_board << new_line
      new_line = []
    end
  end
  new_board
end 

def get_num_of_eles_per_line(board_arr)
  num_of_eles_per_line = CMath.sqrt(board_arr.length)
  num_of_eles_per_line.floor
end
