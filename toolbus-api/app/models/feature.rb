class Feature < ActiveRecord::Base
  has_many :requirements, dependent: :destroy
  validates :text, presence: true, uniqueness: { case_sensitive: false }
  validates_associated :requirements, presence: true
end
