class Animal < ApplicationRecord
  validates :specie, :breed, :name, :age, :bio, presence: true

  scope :age_search, -> (input) { where("age = ?", input.to_i)}
  scope :breed_search, -> (input) { where("breed like ?", "#{input}")}
end
