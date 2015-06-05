class Requirement < ActiveRecord::Base
  belongs_to :feature
  validates :text, presence: true
end
