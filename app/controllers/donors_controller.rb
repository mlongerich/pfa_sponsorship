class DonorsController < ApplicationController
  before_action :fetch_donor, only: [:show, :edit, :update, :destroy] 
  def index
    @donors = Donor.all
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
  def fetch_donor
    @donor = Donor.find(params[:id])
  end
end
