class Question
  attr_accessor :num_one, :num_two, :operator, :question_num, :question, :answer

  @@operators = ["+","-","/","*"]

  def initialize(count)
    @num_one = rand(1..20)
    @num_two = rand(1..20)
    @operator = @@operators[rand(0..3)]
    @question_num = count

    puts "Question #{question_num}: What is #{num_one} #{operator} #{num_two}?"
    
    @response = gets.chomp.to_i
    @answer = eval("#{num_one} #{operator} #{num_two}")
    check_response(@response,@answer)
  end

  def check_response(res,ans)
    if res == ans
      true
    else
      false
    end
  end


end