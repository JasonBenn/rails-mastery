class Feature < ActiveRecord::Base
  has_many :requirements
  validates :text, presence: true, uniqueness: { case_sensitive: false }
  validates_associated :requirements, presence: true
end
