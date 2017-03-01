class TriviaDB

  def initalize(attributes = {})
    @num_of_questions = attributes[:num_of_questions]
    @category = attributes[:category]
    @difficulty = attributes[:difficulty]
    @answer_type = attributes[:answer_type]
  end

  def get_TriviaDB
    response = RestClient.get('https://www.opentdb.com/api.php?amount=10&category=21&difficulty=easy&type=multiple')
    @parsed_response = JSON.parse(response)
    return @parsed_response
  end

end
