class User < ActiveRecord::Base
  has_many :information_templates
  has_many :informations, as: :entity
end
