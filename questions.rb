def question_maker
  @number1 = rand(1..20)
  @number2 = rand(1..20)
  @awnser = (@number1 + @number2)
  @question = "what is #{@number1} + #{@number2}?"
  puts @question
end
