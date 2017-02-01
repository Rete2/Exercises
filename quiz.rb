#DATA structure
quiz =
{
 "What is the capital of Alaska?" => [{answer: 'Melbourne', correct: false}, {answer: 'Anchorage', correct: false}, {answer: 'Juneau', correct: true}],
 "Can you store the value 'cat' in a variable of type int?" => [{answer: 'yes',correct: false}, {answer: 'no', correct: true}]
}

quiz.each_with_index do |(key, value), index1|
  puts "Q"+ "#{index1 + 1}) " + key
  value.each_with_index do |(answer, correct), index|
    print "#{index + 1}) " + "#{answer[:answer]}" + "\n"
  end

  print "Please give me your answer \n > "
  user_input = Integer(gets.chomp)

  if user_input == value [index1 + 1] [:correct]               #Integer() more strict than .to_i
    puts "correct"
  else
   puts "wrong"                             # [key[[true]]]
  end

  # if user_input == answer [][:correct]
  #   puts "correct"
  # else
  #   puts "wrong"                             # [key[[true]]]
  # end                          # key=>[{},{},{1,2}
end

# correct code
#if user_input == answer [][:correct]









# def promt
# print ">"
# end
#
# def ask_user(intro)
#   puts intro
#   promt
#   case gets.chomp.downcase
#   when "y"
#     true
#   when "n"
#     false
#   else
#     puts "Oh I don't understand this answer. Please say that again."
#     ask_user(intro)
#   end
# end
#
# want_quiz = ask_user "Are you ready for a quiz? [y/n] "
#
# if want_quiz == false
#   puts "Oh, too bad!"
#   exit
# end
#
# puts "Okay, here it comes!"






#
#
# def promt
# print ">"
# end
#
# def ask_user(intro)
#   puts intro
#   promt
#   case gets.chomp.downcase
#   when "y"
#     true
#   when "n"
#     false
#   else
#     puts "Oh I don't understand this answer. Please say that again."
#     ask_user(intro)
#   end
# end
#
# want_quiz = ask_user "Are you ready for a quiz? [y/n] "
#
# if want_quiz == false
#   puts "Oh, too bad!"
#   exit
# end
#
# puts "Okay, here it comes!"
#
# #Questions
# q1 = "Q1) What is the capital of Alaska?
#     \n1) Melbourne
#     \n2) Anchorage
#     \n3) Juneau"
#
# q2 = "Q2) Can you store the value 'cat' in a variable of type int?
#     \n1) yes
#     \n2) no"
#
# quiz_hash = {:q1 => 2, :q2 => 2}
#
# def questions(quest)
#   count_correct = 0
#   puts quest
#   puts promt
#   answer = gets.chomp
#   quiz_hash[quest] = answer
#   if answer != q1_a
#     puts "that's wrong!"
#   else
#     puts "that's correct"
#     count_correct =+1
#   end
#   puts quiz_hash
#
# end
#
# questions q1
#
#
#



# data structure --> quesions and answers
# store in hash --> ruby
# {"questions"=> [1,2], "answers" => []}
#
# start with one question and set up the structure
