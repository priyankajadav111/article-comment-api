class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    render json: @articles
  end

  def create
    @article = Article.new(article_params)
    @article.save
    render json: @article
  end

  def show
    @article = Article.find(params[:id])
    render json: @article
  end

  def update
    @article = Article.find(params[:id])

    @article.update(article_params)
      render json: @article
  end
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
     render json: @article
  end


  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
  