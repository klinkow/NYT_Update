class ArticlesController < ActionController::Base
  def index
    @articles = Article.all
    @newses = Nytimes.new().get_NYT()
    @questions = TriviaDB.new().get_TriviaDB("Math", "medium", "Multiple Choice")
  end

  def new
    @article = Article.new
  end

end
