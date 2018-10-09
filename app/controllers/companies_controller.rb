class CompaniesController < ApplicationController
	def new	
		@company = Company.new	
	end

	def create
		@company = Company.new(company_params)
		@company.recruiter_id = current_recruiter.id
		if @company.save
			redirect_to company_path(@company)
		else
			redirect_back(fallback_location: root_path)
		end
	end

	def show
		@company = Company.find(params[:id])
	end

	private

	def company_params
	  params.require(:company).permit!
	end
end
