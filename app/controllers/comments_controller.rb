class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @place = Place.find(params[:place_id])
  end

  def create
    new_review = current_user.comments.new(comment_params)
    new_review.place_id = params[:place_id]
    new_review.save
    redirect_to places_path
  end
    private

    def comment_params
      params.require(:comment).permit(:content, :rating)
    end
end
