class CompaniesController < ApplicationController

  def index
    @companies = Company.all   
  end

  def show
    @company = Company.find_by(id: params[:id])    
  end

  def new
    @companies = Company.new
  end

  def create
    company = Company.new({
      name: params[:name],
      description: params[:description]
      })
    company.save
    redirect_to "/companies/#{company.id}"   
  end

  def edit
    @company = Company.find_by(id: params[:id])
  end

  def update
    company = Company.find_by(id: params[:id])
    company.assign_attributes({
      name: params[:name],
      description: params[:description]
      })
    company.save
    flash[:success] = "Company Updated!"
    redirect_to "/companies"  
  end

  def destroy
    @company = Company.find_by(id: params[:id])
    @company.destroy
    flash[:success] = "Company Deleted!"
    redirect_to "/companies"
  end
  
end
