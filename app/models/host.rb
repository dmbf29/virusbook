class Host < ApplicationRecord
  belongs_to :virus
  has_many :host_symptoms
  has_many :symptoms, through: :host_symptoms
end
