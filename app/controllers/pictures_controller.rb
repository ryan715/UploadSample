class PicturesController < ApplicationController
  
  before_action :set_picture, only: [:show, :edit, :update, :destroy]
  def show
  end

  def index
    @pictures = Picture.all 
  end

  def new
    @picture = Picture.new
  end

  def create
    # @picture = Picture.new(picture_params)
 #    if @picture.save
 #      redirect_to pictures_url, notice: 'Picture was created'
 #    else
 #      render :new
 #    end
 
   @picture = Picture.create(picture_params)
  end
  
  def destroy
    @picture.destroy
    redirect_to pictures_url
  end
  
  private
  def set_picture
    @picture = Picture.find(params[:id])
  end
  
  def picture_params
    params.require(:picture).permit(:image, :image_cashe, :car_token)
  end
end
