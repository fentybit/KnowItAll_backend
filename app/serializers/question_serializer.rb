class QuestionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :question, :choice1, :choice2, :choice3, :choice4, :answer, :category_id, :category
end