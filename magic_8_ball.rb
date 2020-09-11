class MagicEightBall
 
  @@possible_answers = ["for sure, bro", "nah bro", "without a doubt bro",
  "radical", "absolutely bro", "idk bro",
  "Idk bro, this one's on you", "probs", "my mom told me yes", "swagalicious",
  "change your ways my man", "i'm just a skater bro. I don't know the answers to all of life's questions", "Better not tell you now",
  "gnarly"
 ]
 @@default_answers = @@possible_answers.clone

  def initialize
    grab_question
    
  end

  def grab_question
    print "What's your question bro? "
    question = gets.chomp 
    case question
    when 'add_answer'
      puts "which answer would you like to add?"
      new_answer = gets.chomp 
      @@possible_answers.unshift(new_answer)
      puts "#{new_answer} has been added to answers."
    when 'display'
      possible_answer =  "#{@@possible_answers}"
      @@possible_answers.each_with_index do |possible_answer, index|
     puts " Question # #{index+1}) #{possible_answer}"
    end
    when 'delete'
      @@possible_answers = @@default_answers.clone
      puts "your answers have been reset"
    when 'quit'
      puts "l8r sk8r"
      exit
    else
      generate_answer
    end
  end
  
  def generate_answer
    @magic_eight_answer = @@possible_answers[rand(@@possible_answers.length)]
    puts
    puts  "~~~~ " + @magic_eight_answer + " ~~~~"
    puts
  end

end

while true
MagicEightBall.new
end
