class CompaniesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

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

  # def search
  #   search_query = params[:search_input]
  #   @companies = Company.where("name ILIKE ? OR description ILIKE ?", "%#{search_query}%", "%#{search_query}%")
    
  #   if @companies.empty?
  #     flash[:info] = "No Company found"
  #   end
  #   render :index
  # end
  
end
