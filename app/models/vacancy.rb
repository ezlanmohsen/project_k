class Vacancy < ApplicationRecord
	belongs_to :company
	belongs_to :recruiter

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
