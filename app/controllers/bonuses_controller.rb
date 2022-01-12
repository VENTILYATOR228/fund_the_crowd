class BonusesController < ApplicationController
  before_action :get_campaign

  def show
    @bonuse = @campaign.bonuses.find(params[:id])
  end

  def index
    @bonuses = @campaign.bonuses
  end

  def new
    @bonuse = @campaign.bonuses.build
  end

  def edit
    @bonuse = @campaign.bonuses.find(params[:id])
  end

  def create
    @bonuse = @campaign.bonuses.build(bonuse_params)
    if @bonuse.save
      flash[:notice] = "Bonuse is successfully added to campaign"
      redirect_to campaign_bonuses_path(@campaign)
    else
      render "new"
    end
  end

  def update
    @bonuse = @campaign.bonuses.find(params[:id])
    if @bonuse.update(bonuse_params)
      flash[:notise] = "Bonuse is successfully updated"
      redirect_to campaign_bonuses_path(@campaign)
    else
      render "edit"
    end
  end

  private
  def get_campaign
    @campaign = Campaign.find(params[:campaign_id])
  end

  def bonuse_params
    params.require(:bonuse).permit(:name, :description, :price)
  end
end
