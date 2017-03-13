class Project < ApplicationRecord
	has_many :projects_users
	has_many :users, through: :projects_users
	has_many :members, through: :projects_users, source: :user

	has_many :issues

	belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
end
