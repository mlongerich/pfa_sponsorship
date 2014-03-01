class ChildrenController < ApplicationController
  before_action :fetch_child, only: [:show, :edit, :update, :destroy, :toggle_active, :toggle_living, :toggle_schooling] 
  helper_method :sort_column, :sort_direction 
  def index
    @children = Child.order(sort_column + " " + sort_direction)

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

  def sort_column
    Child.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end 
end
