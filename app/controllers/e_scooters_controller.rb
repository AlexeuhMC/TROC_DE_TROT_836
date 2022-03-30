class EScootersController < ApplicationController
  before_action :set_e_scooter, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if user_signed_in?
      @e_scooters = EScooter.where(user_id: current_user.id)
    else
      @e_scooters = EScooter.all
    end
  end

  def show
    @e_scooter = EScooter.find(params[:id])
  end

  def new
    @e_scooter = EScooter.new
  end

  def create
    @e_scooter = EScooter.new(e_scooter_params)
    @e_scooter.user = current_user
    if @e_scooter.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @e_scooter.update(e_scooter_params)
    redirect_to e_scooters_path
  end

  def destroy
    @e_scooter.destroy
    redirect_to root_path
  end

  private

  def set_e_scooter
    @e_scooter = EScooter.find(params[:id])
  end

  def e_scooter_params
    params.require(:e_scooter).permit(:name, :description, :price, :street_name, :disponibility_start, :disponibility_end)
  end
end
