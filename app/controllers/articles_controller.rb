class ArticlesController < ApplicationController

  before_action :find_article, only: [:show, :edit]
  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path (@article)
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

private
  def article_params
    params.require(:article).permit(:title, :content)
  end

  def find_article
    @article = Article.find(params[:id])
  end
end
