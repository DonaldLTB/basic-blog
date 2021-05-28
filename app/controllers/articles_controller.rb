class ArticlesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]
    before_action :find_article, only: [:show, :update, :edit, :destroy]

    def index
      @articles = Article.all
    end

    def show; end

    def new 
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)
        @article.user = current_user
        @article.public = false if @article.public.nil?
        if @article.save
            redirect_to articles_path
        else
            redirect_to articles_path, notice: "Please try again"
        end
    end

    def edit; end

    def update
        @article.update(article_params)
        redirect_to article_path(@article)
    end

    def destroy
        @article.destroy
        redirect_to articles_path
    end

    private

    def find_article
        @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :content, :publish_date, :public)
      end
end
  