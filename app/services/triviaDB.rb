class TriviaDB


  # def initalize(attributes = {})
  #   @num_of_questions = attributes[:num_of_questions]
  #   @category = attributes[:category]
  #   @difficulty = attributes[:difficulty]
  #   @answer_type = attributes[:answer_type]
  # end
  #
  #
  #
  # attr_accessor :num_of_questions, :category, :difficulty, :answer_type
  #
  # def initalize params
  #   @num_of_questions = params[:num_of_questions]
  #   @category = params[:category]
  #   @difficulty = params[:difficulty]
  #   @answer_type = params[:answer_type]
  # end
  #
  #
  #
  # attr_reader(:num_of_questions, :category, :difficulty, :answer_type)
  #
  # define_method(:initialize) do |attributes|
  #   @num_of_questions = attributes.fetch(:num_of_questions)
  #   @category = attributes.fetch(:category)
  #   @difficulty = attributes.fetch(:difficulty)
  #   @answer_type= attributes.fetch(:answer_type)
  # end
  #
  #
  #
  # @@vehicles = []
  #
  # define_method(:initialize) do |num_of_questions, category, difficulty, answer_type|
  #   @num_of_questions = num_of_questions
  #   @category = category
  #   @difficulty = difficulty
  #   @answer_type= answer_type
  # end




  def get_TriviaDB
    response = RestClient.get('https://www.opentdb.com/api.php?amount=10&category=21&difficulty=easy&type=multiple')
    @parsed_response = JSON.parse(response)
    @parsed_response = @parsed_response['results']
    return @parsed_response
  end

end
