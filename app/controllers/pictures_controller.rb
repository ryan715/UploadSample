class PicturesController < ApplicationController
  def show
    @picture = Picture.find(params[:id])
  end

  def index
    @pictures = Picture.all 
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to pictures_url, notice: 'Picture was created'
    else
      render :new
    end
  end
  
  private
  def set_picture
    @picture = Picute.find(params[:id])
  end
  
  def picture_params
    params.require(:picture).permit(:image, :image_cashe, :car_token)
  end
end
