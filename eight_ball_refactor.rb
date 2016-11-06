@answers = ['YES!', 'Not likely...', 'Are you kidding?', 'BOOM!!']

@new_answers = @answers.clone

@main = %w[Ask\ Question Quit]

def magic_menu
  puts "\n\n***MAGIC EIGHT BALL***\n"
  @main.each_with_index { |num, q| puts "#{q + 1}. " + num }
  input = gets.strip.downcase
    case input
      when '1', 'ask question', 'question'
       question
      when '2', 'quit'
        puts "Sorry to see you go..."
        exit(0)
      when '3', 'add_answers', 'add'
       add_answers
      when '4', 'list', 'view', 'print'
        list
      when '5', 'reset', 'reset_answers'
        reset
      else
        puts "Please enter a number 1-5"
        magic_menu
     end
end

def question
  puts "\nWhat's your question?"
  input = gets.strip
  if @new_answers.nil?
    puts "\nMagic eight ball says: #{@answers.sample}"
  else
    puts "\nMagic eight ball says: #{@new_answers.sample}"
  end
end

def add_answers
  puts "What would you like to ADD to the answer queue?"
  add = gets.strip
    if @new_answers.include?(add) == true
      puts 'Already there, try another'
    add_answers
    else
      @new_answers << add
      puts "\n#{add} has been added to the answer queue!"
    end
end

def list
  puts "\nEASTER EGG! Here's the entire Answer Queue:"
  if @new_answers.empty?
    puts @answers
  else
    puts @new_answers
  end
end

def reset
  @new_answers = []
  puts "\nCrafty! The Answer Queue has been RESET"
end

while true
  magic_menu
end
