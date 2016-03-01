class SponsoredPost < ActiveRecord::Base
  belongs_to :topic :SponsoredPost
  has_many :topics
end
