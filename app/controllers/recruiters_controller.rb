class RecruitersController < ApplicationController

    def create
	  recruiter = Recruiter.new(recruiter_params)
	  byebug
	  if recruiter.save
	    session[:recruiter_id] = recruiter_id.id
	    redirect_to '/'
	    #change redirect later
	  else
	    redirect_to '/'
	  end
    end 

	private 

	def recruiter_params
	  params.require(:recruiter).permit!
	end
end
