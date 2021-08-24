class CompanysController < ApplicationController
  def index
    @companys = Company.all
  end

  def new
    @company = Company.new
  end

  def show
    @company = Company.find(params[:id])
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to companys_path
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy
  end

  private
  def company_params
    params.require(:company).permit(:name, :introduce,:profile_image)
  end

  
end
