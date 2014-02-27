class SponsorshipsController < ApplicationController
  before_action :fetch_sponsorship, only: [:show, :edit, :update, :destroy] 

  def index
    @sponsorships= Sponsorship.all
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

  private

  def fetch_sponsorship
    @sponsorship = Sponsorship.find(params[:id])
  end
end
