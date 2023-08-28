class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:comment][:post_id])
    @comment = @post.comments.build(comment_params)
    if @comment.save
      redirect_to root_path, notice: 'Comentario agregado exitosamente.'
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :content)
  end
end