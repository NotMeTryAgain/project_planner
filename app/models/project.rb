class Project < ActiveRecord::Base
  has_many :collaborations
  has_many :tasks
  has_many :users, through: :collaborations

  validates :name, presence: true
  validates :description, length: { maximum: 1000 }, allow_nil: true
end
