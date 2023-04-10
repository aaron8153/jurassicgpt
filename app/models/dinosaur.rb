class Dinosaur < ApplicationRecord
  belongs_to :cage
  belongs_to :species

  validates :name, presence: true
  validate :same_species_in_cage, if: :cage_id_changed?

  private

  def same_species_in_cage
    if cage.dinosaurs.where(species: species).where.not(id: id).exists?
      errors.add(:base, "A cage can only have dinosaurs of the same species.")
    end
  end
end
