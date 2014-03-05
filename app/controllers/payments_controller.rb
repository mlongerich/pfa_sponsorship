class PaymentsController < ApplicationController
  before_action :fetch_payment, only: [:show, :edit, :update, :destroy] 
  helper_method :sort_column, :sort_direction 
  
  def index
    @payments = Payment.order(sort_column + " " + sort_direction)
  end

  def show
  end

  def new
    @payment = Payment.new
  end

  def create
    @payment= Payment.new(payment_params)

    respond_to do |format|
      if @payment.save
        format.html {redirect_to @payment, notice: "Payment was successfully created." }
      else
        format.html {render action: "new"}
      end
    end
  end

  def edit
  end 

  def update 
  	respond_to do |format|
    	if @payment.update(payment_params)
      	format.html { redirect_to @payment, notice: 'Payment  was successfully updated.' }
    	else
      	format.html { render action: 'edit' }
    	end
  	end
	end

  def destroy
  end

  private

  def fetch_payment
    @payment = Payment.find(params[:id])
  end

  def sort_column
    Payment.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end 

	def payment_params
    params.require(:payment).permit(:month_year, :sponsorship_id, :method)
	end


end
