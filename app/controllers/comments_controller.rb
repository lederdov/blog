class CommentsController < ApplicationController
  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.create!( params.require(:comment).permit(:post_id, :comment, :text))

  	redirect_to @post
  end

  def destroy
  end
end
