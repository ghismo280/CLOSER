class Match < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :from_user, class_name: 'User'
  belongs_to :to_user, class_name: 'User'

  def accepted?
    self.status == "accepted"
  end
end
