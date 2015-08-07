

choices = { 'R' => ['Rock', 'S', 'smashes'],
            'P' => ['Paper', 'R', 'covers'], 
            'S' => ['Scissors', 'P', 'cuts'] }
continue = true

puts "Play Rock Paper Scissors!"

while continue
  # get player choice
  puts "Choose one (P/R/S):"
  player_choice = gets.chomp.upcase
  until choices.has_key? player_choice
    puts "Invalid input."
    puts "Choose one (R/P/S):"
    player_choice = gets.chomp.upcase
  end

  # get computer choices
  computer_choice = choices.keys.sample

  # display choices
  puts "You picked #{choices[player_choice][0]} and computer picked #{choices[computer_choice][0]}."

  # declare winner
  if choices[player_choice][1] == computer_choice
    puts "#{choices[player_choice][0]} #{choices[player_choice[2]]} #{choices[computer_choice][0]}!"
    puts "You won!"
  elsif choices[computer_choice][1] == player_choice
    puts "#{choices[computer_choice][0]} #{choices[computer_choice][2]} #{choices[player_choice][0]}!"
    puts "Computer won!"
  else
    puts "It's a tie."
  end

  # prompt for replay
  puts "Play again? (Y/N)"
  play_again = gets.chomp.upcase
  continue = false unless play_again == "Y"

end