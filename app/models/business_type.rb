class BusinessType < ActiveRecord::Base
  validates :name, presence: true
end
