class User < ActiveRecord::Base
  has_many :collaborations
  has_many :tasks
  has_many :projects, through: :collaborations

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, length: { maximum: 50 }, allow_nil: true

  def name
    "#{first_name} #{last_name}"
  end
end
