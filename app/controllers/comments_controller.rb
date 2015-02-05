class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def show
  end

    # article_comment GET    /articles/:article_id/comments/:id(.:format) comments#show

  # def create
  #   @article = Article.find(params[:article_id])
  #   @comment = Comment.new(comment_params)
  #   #@comment.article_id = params[:article_id] - alternative
  #   @comment.article = @article
  #   if @comment.save
  #     redirect_to  article_path(@article)
  #   else
  #     render 'new'
  #   end
  # end

  private
    def comment_params
      params.require(:comments).permit(:body)
    end
end