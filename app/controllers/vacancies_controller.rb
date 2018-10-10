class VacanciesController < ApplicationController
	def new
		@vacancy = Vacancy.new
	end

	def create
		@vacancy = Vacancy.new(vacancy_params)
		@vacancy.recruiter_id = current_recruiter.id
		@company = Company.find_by(recruiter_id: current_recruiter.id)
		@vacancy.company_id = @company.id
		if @vacancy.save
			redirect_to vacancy_path(@vacancy)
		else
			redirect_back(fallback_location: root_path)
		end
	end

	def show
		@vacancy = Vacancy.find(params[:id])
		@company = Company.find(@vacancy.company.id)
	end

	private

	def vacancy_params
	  params.require(:vacancy).permit!
	end
end
