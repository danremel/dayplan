class Api::DaysController < ApplicationController
  def index 
    @days = Day.all
  end

  def show
    @day = Day.find(params[:id])
  end

  def create
    @day = Day.create!(day_params)
  end

  def update
    @day = Day.find(params[:id])
      @day.update(day_params)
    redirect_to api_day_path(@day)
  end

  def destroy
    @day = Day.find(params[:id])
      @day.destroy
    redirect_to api_days_path
  end

  private
  def day_params
    params.require(:day).permit(:date)
  end

end
