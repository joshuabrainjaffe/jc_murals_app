class MuralsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :proper_user, only: [:edit, :destroy]
  before_action :set_mural, only: [:show, :update, :destroy]

  def index
    @murals = Mural.all
  end

  def show
    @mural = Mural.find(params[:id])
  end

  def new
   @mural = Mural.new
 end

  # def create
  #   @user = User.find_by(id: current_user.id)
  #   @mural = Mural.create(mural_params, :users_id => @user.id)
  #   redirect_to murals_path
  # end

def create
    @user = User.find_by(id: current_user.id)

    title = mural_params[:title]
    artist = mural_params[:artist]
    website = mural_params[:website]
    year = mural_params[:year]
    description = mural_params[:description]
    neighborhood = mural_params[:neighborhood]
    address = mural_params[:address]
    image = mural_params[:image]
    
    @mural = Mural.create(:title => title, :artist => artist, :website => website, :year => year, :description => description, :neighborhood => neighborhood, :address => address, :users_id => @user.id, :image => image)
    redirect_to murals_path
  end

 def edit
   @mural = Mural.find(params[:id])
 end

 def update
   @mural = Mural.find(params[:id])
   @mural.update_attributes(mural_params)
   redirect_to murals_path
 end

 def destroy
   @mural = Mural.find(params[:id])
   @mural.destroy
   redirect_to murals_path
 end

 private

  def set_mural
    @mural = Mural.find(params[:id])
  end

  def mural_params
      params.require(:mural).permit(:title, :artist, :website, :year, :description, :neighborhood, :address, :image)
  end

  # def mural_params
  #   params.require(:mural).permit(:title, :artist, :website, :year, :description, :neighborhood, :address, :image)
  # end

  def proper_user
    mural = Mural.find(params[:id])
    if current_user.id != mural.users_id
      redirect_to new_user_registration
    end
  end

end
