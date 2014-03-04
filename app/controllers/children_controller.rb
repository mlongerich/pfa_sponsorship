class ChildrenController < ApplicationController
  before_action :fetch_child, only: [:show, :edit, :update, :destroy, :toggle_active, :toggle_living, :toggle_schooling] 
  helper_method :sort_column, :sort_direction 

  def index
    @children = Child.order(sort_column + " " + sort_direction)
  end

  def show
  end

  def new
    @child = Child.new
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

  def create
    @child = Child.new(child_params)

    respond_to do |format|
      if @child.save
        format.html {redirect_to @child, notice: "Child was successfully created." }
      else
        format.html {render action: "new"} 
      end
    end
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

  def child_params
    params.require(:child).permit(:name, :number, :photo, :active, :living, :schooling)
  end
end
