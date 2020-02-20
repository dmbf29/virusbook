class Symptom < ApplicationRecord
  has_many :host_symptoms
  has_many :hosts, through: :host_symptoms

  validates :name, presence: true, uniqueness: true

  def to_label
    name.capitalize
  end
end
