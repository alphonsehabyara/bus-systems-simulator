class CommentsController < ApplicationController
  def index
    @comments = Comment.all   
  end

  def show
    @comment = Comment.find_by(id: params[:id])   
  end

  def new
    @comments = Comment.new
  end

  def create
    comment = Comment.new({
      comment_body: params[:comment_body],
      company_id: params[:company_id],
      user_id: current_user.id
      })
    comment.save
    redirect_to "/companies"
  end

  def edit
    @comment = Comment.find_by(id: params[:id])
  end

  def update
    comment = Comment.find_by(id: params[:id])
    comment.assign_attributes({
      comment_body: params[:comment_body],
      company_id: params[:company_id],
      user_id: params[:user_id]
      })
    comment.save
    flash[:success] = "Comment updated!"
    redirect_to "/comments"  
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy
    flash[:success] = "Comment Deleted!"
    redirect_to "/comments"
  end
end
