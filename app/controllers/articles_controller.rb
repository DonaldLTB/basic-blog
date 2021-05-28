class ArticlesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]
    before_action :find_article, only: [:new, :show, :edit, :update, :destroy]

    def index
      @articles = Article.all
    end

    def show; end

    def update
    end

    def edit; end
    private

    def find_article
        @article = Article.find(params[:id])
    end
end
  