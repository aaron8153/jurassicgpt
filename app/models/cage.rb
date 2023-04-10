class Cage < ApplicationRecord
  has_many :dinosaurs, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :power_status, presence: true
  validate :no_dinosaurs_on_power_down, if: :power_status_changed?

  enum power_status: { DOWN: 0, ACTIVE: 1 }

  def number_of_dinosaurs
    dinosaurs.count
  end

  private

  def no_dinosaurs_on_power_down
    if power_status_changed? && power_status_was == "ACTIVE" && dinosaurs.present?
      errors.add(:base, "A cage cannot be powered down if it contains dinosaurs.")
    end
  end
end
