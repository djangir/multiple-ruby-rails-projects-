class Micropost < ApplicationRecord
	belongs_to :user, :optional => true
end
