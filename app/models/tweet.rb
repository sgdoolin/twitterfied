class Tweet < ActiveRecord::Base
  belongs_to :user

  validates :message, presence: true, length: {maximum: 140, too_long: "A 
  	tweet is only 140 characters max. Everybody knows that!"}
  validates :user_id, presence: true
end
