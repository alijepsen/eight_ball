crazy = true


@answers = [
  "It is certain",
  "Without a doubt",
  "Outlook good",
  "Signs point to yes",
  "Reply hazy try again",
  "Better not tell you now",
  "Cannot predict now",
  "Concentrate and ask again",
  "My sources say no",
  "Very doubtful"
]

##################
def magic_menu
  puts "\n\n***Welcome to the MAGIC EIGHT BALL:***\n"
  puts "1) Type 1 to ask a question"
  puts "2) Type 2 to QUIT"
  input = gets.strip.to_i
  #  case input
  #    when input == 'QUIT', 'q', 'quit'
  magic_menu_choice(input)
end

#binding.pry


def add_answers
  puts "A Golden Egg!!  What would you like to add?"
  add = gets.strip
    if @new_answers.include?(add) == true
      puts 'Already there, try again'
    add_answers
    else
      @new_answers << add
      puts "\n#{add} has been added to the answer queue!\n\n"
      puts "Your new answers are:"
      puts @new_answers
    end
  magic_menu
end

def reset_answers
  end

@new_answers = @answers.clone

def question
  input = gets.strip
#   if input == 'QUIT'
#     puts "Sorry to see you go..."
#     exit
#  end
#magic_menu
  if @new_answers.nil?
    puts "The magic eight ball says: #{@new_answers.sample}."
  else
    puts "The magic eight ball says: #{@answers.sample}."
  end
  magic_menu_choice(input)
end


def magic_menu_choice(play)
  case play
    when 1
      puts "Ask your question:"
      question
    when 2
      puts "Sorry to see you go..."
      exit
    when 3
      add_answers
    when 4
      puts @answers #print all the answers
    when 5
      reset_answers
    else
      puts "Sorry I don't understand"
      magic_menu
  end
end

magic_menu

#def loop
#  magic_menu
#  loop
#end

#loop

# Set answers array back to original (arr.clone)
# Easter Egg Question ("reset_answers")

# Make eight ball spit out all the answers
# via easter egg questions ("print_answers")
