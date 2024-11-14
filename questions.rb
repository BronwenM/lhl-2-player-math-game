class QuestionBank
  attr_reader :question_count, :question_bank
  
  def initialize(question_count)
    @question_count = question_count
    @question_bank = create_question_bank
  end

  def create_question_bank
    operators = ['+', '-', '*']
    questions = []
    

    (1...question_count).each do |question| 
      expression_left = rand(20)
      expression_right = rand(20)
      expression_operator = operators.sample
      answer = expression_left.public_send expression_operator,expression_right

      questions.push({question: "What is #{expression_left} #{expression_operator} #{expression_right}?", answer: answer})
    end
    questions
  end

end

@questions = [
  {
    question: "What is 2+2?",
    answer: 4
  },
  {
    question: "3x3=?",
    answer: 9
  },
  {
    question: "2^2=?",
    answer: 4
  },
  {
    question: "Who is the coolest?",
    answer: "me"
  }
]