class ApplicationsController < ApplicationController

def new
  @application = Application.new
end

def create
  @application = Application.new(application_params)
  if @application.save
    redirect_to budget_path(@application)
  end
end

def show
  @application = Application.find_by(id: params[:id])
end 

private

def application_params
  params.require(:budget).permit(:date, :savings, 
    :total, :rent, :utilities, :food, 
    :clothes, :phone, :fun, :random, 
    :note_attributes => [:description])
end

end