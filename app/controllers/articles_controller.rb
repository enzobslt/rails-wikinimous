class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @articles = Article.new
  end

  def create
    @articles = Article.new(params_articles)
    @articles.save
    redirect_to articles_path
  end

  def edit
    @articles = Article.find(params[:id])
  end

  def update
    @articles = Article.find(params[:id])
    @articles.update(params_articles)
    redirect_to articles_path
  end

  def destroy
    @articles = Article.find(params[:id])
    @articles.destroy
    redirect_to articles_path, status: :see_other
  end

  def show
    @articles = Article.find(params[:id])
  end
end

private

  def params_articles
    params.require(:article).permit(:title, :content)
  end
