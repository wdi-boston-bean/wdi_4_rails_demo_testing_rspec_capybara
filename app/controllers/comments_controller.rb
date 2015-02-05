class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  private
    def comment_params
      params.require(:comments).permit(:body)
    end
end