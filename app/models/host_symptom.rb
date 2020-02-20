class HostSymptom < ApplicationRecord
  belongs_to :host
  belongs_to :symptom

  validates_uniqueness_of :host, scope: :symptom
end
