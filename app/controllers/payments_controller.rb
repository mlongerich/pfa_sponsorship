class PaymentsController < ApplicationController
  before_action :fetch_payment, only: [:show, :edit, :update, :destroy] 
  def index
    @payments = Payment.all
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
  def fetch_payment
    @payment = Payment.find(params[:id])
  end
end
