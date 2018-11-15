class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :photo, PhotoUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :from_user_matches, class_name: 'Match', foreign_key: 'from_user_id'
  has_many :to_user_matches, class_name: 'Match', foreign_key: 'to_user_id'
  has_many :interests

  # validates_presence_of :latitude, :longitude

  geocoded_by :address

  def self.like_me(user)
    question_ids = user.valid_interest.map(&:question_id).uniq
    # question_ids = [1,2,3,4,5]

    user_ids_like_me = Interest.where(answer: "true", question_id: question_ids).group_by(&:user_id)
    user_ids_like_me = user_ids_like_me.keys.uniq

    User.where(id: user_ids_like_me)
  end

  def self.near_me(users, user)
    query = User.where(id: users.map(&:id))

    if user.latitude and user.longitude
      query = query.near([user.latitude, user.longitude], 60, units: :km, order: "distance")
    end

    query
  end


  def valid_interest
    self.interests.where(answer: "true")
  end

  # validates_presence_of   :photo
  # validates_integrity_of  :photo
  # validates_processing_of :photo

end
