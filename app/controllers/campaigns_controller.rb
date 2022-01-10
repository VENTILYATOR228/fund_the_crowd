class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]

  def show
    @areas = @campaign.areas
    @bonuses = @campaign.bonuses
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
    @campaign.user_id = current_user[:id]
    if @campaign.save
      flash[:notice] = "Campaign was created successfully!"
      redirect_to @campaign
    else
      render 'new'
    end
  end

  def update
    if @campaign.update(campaign_permit)
      flash[:notice] = "Campaign was updated successfully!"
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
    params.require(:campaign).permit(:name, :description, area_ids: [])
  end

  def set_campaign
    @campaign = Campaign.find(params[:id])
  end

end
