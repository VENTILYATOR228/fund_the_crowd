class BonusesController < ApplicationController

  def new
    @bonuse = Bonuse.new
  end

  def edit
    @bonuse = Bonuse.find(params[:id])
  end

  def create
    @bonuse = Bonuse.new(params.require(:bonuse).permit(:name, :description, :price))
    if @bonuse.save
      flash[:notice] = "Bonuse is successfully added to campaign"
    else
      render "new"
    end
  end

  def update
    @bonuse = Bonuse.find(params[:id])
    if @bonuse.update(params.require(:bonuse).permit(:name, :description, :price))
      flash[:notise] = "Bonuse is successfully updated"
    else
      render "edit"
    end
  end

end
