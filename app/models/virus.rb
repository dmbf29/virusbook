class Virus < ApplicationRecord
  has_many :hosts, dependent: :destroy
  validates :name, presence: true
end
