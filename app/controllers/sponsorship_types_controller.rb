class SponsorshipTypesController < ApplicationController
  before_action :fetch_sponsorship_type, only: [:show, :edit, :update, :destroy] 
  def index
    @sponsorship_types = SponsorshipType.all
  end

  def show

  end

  def new

  end

  def edit

  end 

  def update

  end

  def destroy

  end
  def fetch_sponsorship_type
    @sponsorship_type= SponsorshipType.find(params[:id])
  end
end
