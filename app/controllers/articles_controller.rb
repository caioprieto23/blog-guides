class ArticlesController < ApplicationController
  def new
  end

  def index
    return @articles = Article.where(id: number_query) if number_query.present?

    @articles = Article.all
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to root_path
    else
      render 'index'
    end
  end

  def create
    @article = Article.new(article_params)
   
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
 
    redirect_to articles_path
  end

  private

  def number_query
    params[:number_query]
  end

  def query
    params[:query]
  end

  def article_params
    params.require(:article).permit(:id, :title, :text)
  end
end
