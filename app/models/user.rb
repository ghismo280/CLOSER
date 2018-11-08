class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :photo, PhotoUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :remember_me, :avatar, :avatar_cache, :remove_avatar


  has_many :from_user_matches, class_name: 'Match', foreign_key: 'from_user_id'
  has_many :to_user_matches, class_name: 'Match', foreign_key: 'to_user_id'
  has_many :interests


  def valid_interest
    self.interests.where(answer: "true")
  end
end
