class CommentsController < ApplicationController
  def new
  end

  def create
    @comment = Comment.create(comment_params)
    redirect_to tweets_path
  end

  def destroy
    @comment = Comment.find_by(tweet_id: params[:tweet_id], user_id: current_user.id)
    @comment.destroy
  end
  
  private
      def comment_params
        params.require(:comment).permit(:body).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
      end
  
end
