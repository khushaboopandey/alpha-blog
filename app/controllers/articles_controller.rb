class ArticlesController < ApplicationController

    def show
      @article = Article.find(params[:id])  
    end

    def index
      @articles = Article.all  
    end

    def new
    #   @articles = Article.all  
    end

    def create
        @articles = Article.new(params.require(:article).permit(:title, :description))
        @articles.save
        redirect_to @articles
    end

end