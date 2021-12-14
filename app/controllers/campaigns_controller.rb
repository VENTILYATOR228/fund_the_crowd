class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @campaigns = Campaign.all
  end

  def edit
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(campaign_permit)
    if @campaign.save
      redirect_to @campaign
    else
      render 'new'
    end
  end

  def update
    if @campaign.update(campaign_permit)
      redirect_to @campaign
    else
      render 'edit'
    end
  end

  def destroy
    @campaign.destroy
    redirect_to campaigns_path
  end

  private
  def campaign_permit
    params.require(:campaign).permit(:campaign_name, :description)
  end

  def set_campaign
    @campaign = Campaign.find(params[:id])
  end

end
