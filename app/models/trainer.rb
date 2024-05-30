class Trainer < ApplicationRecord
  validates :banner_url, :name, presence: true
  has_many :pokemons # delete the child when removing self(trainer it self)
end
