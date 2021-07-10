class CampaniesController < ApplicationController

  def new
    @campany = Campany.new
    @campany.users << current_user
  end

  def create
    if Campany.create(Campany_params)
      redirect_to Campanys_path, notice: 'グループを作成しました'
    else
      render :new
    end
  end

  def index
    @campanies = Campany.all.order(updated_at: :desc)
  end

  def show
    @campany = Campany.find_by(id: params[:id])

    if !@campany.users.include?(current_user)
      @campany.users << current_user
    end

    @campany_posts = CampanyPost.where(campany_id: @campany.id).all
  end

  private
  def campany_params
    params.require(:campany).permit(:name, :user_id [])
  end

  def campany_post_params
    params.require(:campany_post).permit(:title, :content)
  end

end
