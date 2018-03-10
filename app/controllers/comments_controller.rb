class CommentsController < ApplicationController
    def create
        @comment = Comment.create(text: comment_params[:text], tweet_id: comment_params[:tweet_id], user_id: current_user.id)
        redirect_to "/tweets/#{@comment.tweet.id}" #コメントと結びつくツイートの遷移画面
    end
    
    private
    def comment_params
        params.permit(:text, :tweet_id)
    end
end
