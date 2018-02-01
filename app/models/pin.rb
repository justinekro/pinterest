class Pin < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  VALID_LINK_REGEX = /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix
	validates :url, presence: true,
			            format: { with: VALID_LINK_REGEX }

	# Regex qui oblige un http ou https
end
