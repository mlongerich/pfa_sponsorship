class SponsorshipTypesController < ApplicationController

  before_action :fetch_sponsorship_type, only: [:show, :edit, :update, :destroy] 
  helper_method :sort_column, :sort_direction 

  def index
    @sponsorship_types = SponsorshipType.order(sort_column + " " + sort_direction)
  end

  def show
  end

	def new
    @sponsorship_type = SponsorshipType.new
	end

	def create 
    @sponsorship_type = SponsorshipType.new(sponsorship_type_params)
     
    respond_to do |format|
      if @sponsorship_type.save
        format.html {redirect_to @sponsorship_type, notice: "Sponsorship Type  was successfully created." }
      else 
        format.html {render action: "new"}
      end
    end
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

	def sponsorship_type_params
    params.require(:sponsorship_type).permit(:kind, :amount)
	end
end
