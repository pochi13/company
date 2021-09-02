class CompanysController < ApplicationController
  def index
    @companys = Company.all
  end

  def new
    @company = Company.new
  end

  def show
    @company = Company.find(params[:id])
    @companys = Company.new
    @messages = Message.all
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
    @company = Company.find(params[:id])

  end

  def update
    @company = Company.find(params[:id])
    if @company.update(company_params)
      redirect_to companys_path(@company)
    else
      render :edit
    end
  end

  def destroy
    @company = Company.find(params[:id])
    # if current_user.id == @company.id
    @company.destroy
    redirect_to companys_path
    end
  # end

  private
  def company_params
    params.require(:company).permit(:name, :introduce,:profile_image)
  end

  
end
