class SponsorshipsController < ApplicationController

  before_action :fetch_sponsorship, only: [:show, :edit, :update, :destroy] 
  helper_method :sort_column, :sort_direction 

  def index
    @sponsorships = Sponsorship.order(sort_column + " " + sort_direction)
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
  
  def sort_column
    Sponsorship.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end 
end
