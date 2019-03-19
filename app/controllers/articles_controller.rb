class ArticlesController < ApplicationController
  def index
    @articles = Article.all.order("created_at DESC").page(params[:page]).per(5)
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path, notice: "新しい記事を投稿しました"
    else
      render :new
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :text, :image)
  end

end
