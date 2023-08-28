class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @post = Post.find(params[:post_id])
    @parent_id = params[:parent_id] # Obtener el parent_id desde los parámetros
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to post_path(@comment.post), notice: 'Comentario agregado exitosamente.'
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :content, :post_id, :parent_id) # Agrega parent_id a los permitidos
  end
end