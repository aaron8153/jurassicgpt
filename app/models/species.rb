class Species < ApplicationRecord
  has_many :dinosaurs, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :diet_type, presence: true

  enum diet_type: { herbivore: 0, carnivore: 1 }
end
