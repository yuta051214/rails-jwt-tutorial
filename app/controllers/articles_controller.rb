class ArticlesController < ApplicationController
  respond_to :json

  before_action :authenticate_user!, only: [:create, :update, :destroy]

  def create
    article = current_user.articles.build(article_params)
    article.save!

    render json: {
        status: {code: 200, message: "create article sucessfully."},
        data: ArticleSerializer.new(article).serializable_hash[:data][:attributes]
      }, status: :ok
  end

  def index

  end

  def show

  end

  def update

  end

  def destroy

  end

  private

  def article_params
    params.require(:article).permit(:content)
  end
end
