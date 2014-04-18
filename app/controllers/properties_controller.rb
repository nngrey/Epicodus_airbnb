class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  def index
    # @user = current_user
    @properties = Property.all
  end

  def new
    @property = Property.new
    authorize! :new, @property
  end

  def create
    @property = Property.new(property_params)
    authorize! :create, @property
    if @property.save
      flash[:notice] = "Property created!"
      redirect_to properties_path
    else
      render 'new'
    end
  end

  def show
    @reservation = Reservation.new
    @review = Review.new
  end

  def edit
    authorize! :edit, @property
  end

  def update
    authorize! :update, @property
    if @property.update(property_params)
      flash[:notice] = "Property updated!"
      redirect_to property_path
    else
      render 'edit'
    end
  end

  def destroy
    authorize! :destroy, @property
    @property.destroy
    redirect_to properties_path
  end

  private

  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:description, :price, :title, :address, :image, :user_id)
  end

end
