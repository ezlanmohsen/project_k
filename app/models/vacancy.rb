class Vacancy < ApplicationRecord
	belongs_to :company
	belongs_to :recruiter
  has_many :jobseeker_vacancies
  has_many :jobseekers, through: :jobseeker_vacancies

	DEPARTMENT_LIST = [
  	'Accounting & Finance',
  	'Administrative & Management',
  	'Communications & Public Relations',
  	'Customer Service Support',
  	'Distribution & Logistics',
  	'Human Resource & Talent',
  	'IT & Tech',
  	'Legal',
  	'Marketing & Sales',
  	'Operations & Production',
  	'Research & Development'
  ]
end
