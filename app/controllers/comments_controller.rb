class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @article = Article.find(params[:id])
    @comment = @article.comments(comment_params)
    
  end

  private
    def comment_params
      params.require(:comments).permit(:body)
    end


end
