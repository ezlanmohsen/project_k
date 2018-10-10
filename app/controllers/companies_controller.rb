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
		if @company.less_than_20? && @company.nine_to_nine?
			@jobseekers = Jobseeker.where("pref_size LIKE (?)", "Small").where("pref_hours LIKE (?)", "Traditional").where("location LIKE (?)", @company.state.name).where("degree LIKE (?)", @company.industry.name).where("we1 LIKE (?) OR we2 LIKE (?) or we3 LIKE (?)", @company.industry.name, @company.industry.name, @company.industry.name)
		elsif @company.less_than_20? && @company.work_at_home?
			@jobseekers = Jobseeker.where("pref_size LIKE (?)", "Small").where("pref_hours LIKE (?)", "Modern").where("location LIKE (?)", @company.state.name).where("degree LIKE (?)", @company.industry.name).where("we1 LIKE (?) OR we2 LIKE (?) or we3 LIKE (?)", @company.industry.name, @company.industry.name, @company.industry.name)
		elsif @company.more_than_20? && @company.work_at_home?
			@jobseekers = Jobseeker.where("pref_size LIKE (?)", "Big").where("pref_hours LIKE (?)", "Modern").where("location LIKE (?)", @company.state.name).where("degree LIKE (?)", @company.industry.name).where("we1 LIKE (?) OR we2 LIKE (?) or we3 LIKE (?)", @company.industry.name, @company.industry.name, @company.industry.name)
		elsif @company.more_than_20? && @company.nine_to_nine?
			@jobseekers = Jobseeker.where("pref_size LIKE (?)", "Big").where("pref_hours LIKE (?)", "Traditional").where("location LIKE (?)", @company.state.name).where("degree LIKE (?)", @company.industry.name).where("we1 LIKE (?) OR we2 LIKE (?) or we3 LIKE (?)", @company.industry.name, @company.industry.name, @company.industry.name)
		else
			@jobseekers = Jobseeker.where("location LIKE (?)", @company.state.name).where("degree LIKE (?)", @company.industry.name).where("we1 LIKE (?) OR we2 LIKE (?) or we3 LIKE (?)", @company.industry.name, @company.industry.name, @company.industry.name)
		end

	end

	private

	def company_params
	  params.require(:company).permit!
	end
end