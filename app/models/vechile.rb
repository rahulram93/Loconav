class Vechile < ActiveRecord::Base
  belongs_to :user
  has_many :informations, as: :entity
end
