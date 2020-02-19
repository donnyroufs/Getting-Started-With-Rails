class ArticlesController < ApplicationController
    def index
        # Create a new variable that grabs all the articles
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    def new
    end

    def create
        @article = Article.new(article_params)
 
        @article.save

        # Checks if it passed the validation
        if @article.save
            redirect_to @article
        else
            render 'new'
        end
    end

    private
    def article_params
        # We need to tell rails that we only allow these values. ":title, :text"
        # Considering we want to re-use this for more than one method, we'll add this to its own private method.
        params.require(:article).permit(:title, :text)
    end
end
    