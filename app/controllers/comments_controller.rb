class CommentsController < ApplicationController
    # http_basic_authenticate_with name: "admin", password: "1q2"

    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params)
        if(@comment.save)
            redirect_to post_path(@post), success: "Коментар успішно добавлений"
        else
            redirect_to post_path(@post), danger: "Псевдонім та коментар мають бути довжиною хоча б 1 символ.`"
        end
    end

    private def comment_params
        params.require(:comment).permit(:username,:body)
    end
end
