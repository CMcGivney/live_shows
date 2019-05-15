class ShowsController < ApplicationController
  def index
  @shows = Show.all  
  end

  def new
   @show = Show.new
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    if @show.update(show_params)
      redirect_to shows_path
    else
      render :edit
    end
  end

  def create
    @show = Show.new(show_params)

    if @show.save
      redirect_to shows_path
    else
      rende :new
    end
  end

  def show
    @show = Show.find(params[:id])
  end

  def destroy
    Show.find(params[:id]).destroy
    redirect_to shows_path
  end

  private
  def show_params
 params.require(:show).permit(:venue, :band, :genre, :time, :date, :price)
  end
end
