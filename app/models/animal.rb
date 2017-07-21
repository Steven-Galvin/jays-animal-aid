class Animal < ApplicationRecord
  validates :specie, :breed, :name, :age, :bio, presence: true
end
