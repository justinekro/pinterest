class Pin < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  VALID_LINK_REGEX = /\A[\w+\-.]+.[a-z]+/i
	validates :url, presence: true,
			            format: { with: VALID_LINK_REGEX }

	# Regex simple sans https:// > juste sous la forme aaaaa.c
end
