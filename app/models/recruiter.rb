class Recruiter < ApplicationRecord
	has_secure_password

	has_many :companies
end
