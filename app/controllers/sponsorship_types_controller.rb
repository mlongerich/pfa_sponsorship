class SponsorshipTypesController < ApplicationController

  before_action :fetch_sponsorship_type, only: [:show, :edit, :update, :destroy] 
  helper_method :sort_column, :sort_direction 

  def index
    @sponsorship_types = SponsorshipType.order(sort_column + " " + sort_direction)
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

  def fetch_sponsorship_type
    @sponsorship_type= SponsorshipType.find(params[:id])
  end

  def sort_column
    SponsorshipType.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end 

end
