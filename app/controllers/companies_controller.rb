class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def edit
    @company = Company.find(params[:id])
  end

  def show
    @company = Company.find(params[:id])
  end

  def index
    @companies = Company.all
  end

  def create
    @company = Company.new(company_params)

    if @company.save
      redirect_to companies_path, notice: 'Company successfully created'
    else
      render :new
    end
  end

  def update
    @company = Company.find(params[:id])

    if @company.update_attributes(company_params)
      redirect_to @company, notice: 'Company successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    redirect_to companies_path
  end

  private

    def company_params
      params.require(:company).permit(:name, :budget, :actual)
    end
end
