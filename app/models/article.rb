class Article < ActiveRecord::Base
	belongs_to :user
	has_many :artical_categories
	has_many :categories, through: :artical_categories
	validates :title, presence: true
	validates :content, presence: true
	validates :categories, presence: true
end
