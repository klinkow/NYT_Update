class ArticlesController < ActionController::Base
  def index
    @articles = Article.all
    @newses = Article.new().get_NYT()
  end

  def new
    @article = Article.new
  end

end
