class Student < ApplicationRecord
	belongs_to :department
	default_scope {joins(:department).where('departments.is_deleted = false')}
end
