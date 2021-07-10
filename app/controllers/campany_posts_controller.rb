class CampanyPostsController < ApplicationController
  
  def new
    @campany_post = current_user.campany_posts.new
    @campany = Campany.find_by(id: params[:campany_id])
  end

  def create
    @campany = Campany.find_by(id: params[:campany_id])
    @campany_post = current_user.campany_posts.new(campany_post_params)
    @campany_post.campany_id = params[:campany_id]
    if @campany_post.save
      redirect_to campany_path(@campany.id)
    end
  end

  private
    def campany_post_params
      params.require(:campany_post).permit(:title, :content)
    end
  
end
