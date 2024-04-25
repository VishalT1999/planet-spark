class Post < ApplicationRecord
	belongs_to :user
	validates_presence_of :caption
  has_one_attached :content, dependent: :destroy 
end
