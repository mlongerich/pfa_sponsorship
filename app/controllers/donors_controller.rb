class DonorsController < ApplicationController

  before_action :fetch_donor, only: [:show, :edit, :update, :destroy] 
  helper_method :sort_column, :sort_direction 

  def index
    @donors = Donor.order(sort_column + " " + sort_direction)
  end
  
  def show
  end


	def new
  	@donor = Donor.new
	end

	def create 
    @donor = Donor.new(donor_params)
     
    respond_to do |format|
    	if @donor.save
        format.html {redirect_to @donor, notice: "Donor was sucessfully created." }
      else 
	      format.html {render action: "new"}
      end
    end
	end

  def edit
  end 

  def update 
  	respond_to do |format|
    	if @donor.update(donor_params)
     		format.html { redirect_to @donor, notice: 'Donor was successfully updated.' }
    	else
      	format.html { render action: 'edit' }
    	end
  	end
	end

  def destroy
  end

  def child
  end

  private
 
  def fetch_donor
    @donor = Donor.find(params[:id])
  end

  def sort_column
    Donor.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end 


	def donor_params
    params.require(:donor).permit(:name, :address, :city, :state, :postal_code, :country, :email)
	end
end
