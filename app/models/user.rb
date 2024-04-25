class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  # has_many :followers, foreign_key: :follower_id , class_name: "Companion"
  # has_many :followed, foreign_key: :followed_id, class_name: "Companion"

end
