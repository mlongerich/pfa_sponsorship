class ChildrenController < ApplicationController
  before_action :fetch_child, only: [:show, :edit, :update, :destroy, :toggle_active, :toggle_living, :toggle_schooling] 
  def index
    @children = Child.all

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

  def toggle_active
    @child.toggle!(:active)
    flash[:notice] = "Active status has changed"
    redirect_to @child
  end

  def toggle_living
    @child.toggle!(:living)
    flash[:notice] = "Living status has changed"
    redirect_to @child
  end
  def toggle_schooling
    @child.toggle!(:schooling)
    flash[:notice] = "Schooling status has changed"
    redirect_to @child
  end

  private


  def fetch_child
    @child = Child.find(params[:id])
  end
end
