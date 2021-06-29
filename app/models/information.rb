class Information < ActiveRecord::Base
  belongs_to :information_template

  belongs_to :entity, polymorphic: true
end
