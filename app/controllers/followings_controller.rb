class FollowingsController < ApplicationController
  before_action :set_following, only: [:destroy]
  def create
    # params = { following: { user_id: x, post_id: y }}
    following = params[:following]
    followee = User.find following[:user_id]
    current_user.followees << followee
    redirect_to post_path(following[:post_id])
  end

  def destroy
    @following.destroy
    respond_to do |format|
      format.html { redirect_to '/', notice: 'Following was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


def set_following
    # @following = Following.find(params[:id])
    # byebug
  # user_id = Post.find(params[:id]).user.id
  # cur_user_id = current_user
  # # @following = Following.find(Following.where(user_id: user_id, follower_id: cur_user_id).ids.last)
  # @following = Following.find_by user_id: user_id, follower_id: cur_user_id
  @following = Following.find(params[:id])
end
end
