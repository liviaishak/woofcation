class Profile < ApplicationRecord

  validate_presence_of :bio
  validate_presence_of :member_id
  belongs_to :member
end
