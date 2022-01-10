class AreasController < ApplicationController

  def index
    @areas = Area.all
  end

  def show
    @area = Area.find(params[:id])
  end

  def edit
    @area = Area.find(params[:id])
  end

  def new
    @area = Area.new
  end

  def update
    @area = Area.find(params[:id])
    if @area.update(params.require(:area).permit(:name))
      flash[:notice] = "Area name was updated successfully!"
      redirect_to @area
    else
      render 'edit'
    end
  end

  def create
    @area = Area.new(params.require(:area).permit(:name))
    if @area.save
      flash[:notice] = "Area was successfully created"
      redirect_to @area
    else
      render 'new'
    end
  end
end
