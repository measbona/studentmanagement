class Department < ApplicationRecord
	has_many :students
	default_scope {where('is_deleted = false')}
end
